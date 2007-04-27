// $OpenBSD: IMonKQueue.c++,v 1.1.1.1 2007/04/27 22:00:55 jasper Exp $
//  $NetBSD: IMonKQueue.c++,v 1.3 2005/01/05 16:21:06 jmmv Exp $
//
//  Copyright (c) 2004, 2005 Julio M. Merino Vidal.
//  
//  This program is free software; you can redistribute it and/or modify it
//  under the terms of version 2 of the GNU General Public License as
//  published by the Free Software Foundation.
//
//  This program is distributed in the hope that it would be useful, but
//  WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  Further, any
//  license provided herein, whether implied or otherwise, is limited to
//  this program in accordance with the express provisions of the GNU
//  General Public License.  Patent licenses, if any, provided herein do not
//  apply to combinations of this program with other product or programs, or
//  any other product whatsoever.  This program is distributed without any
//  warranty that the program is delivered free of the rightful claim of any
//  third person by way of infringement or the like.  See the GNU General
//  Public License for more details.
//
//  You should have received a copy of the GNU General Public License along
//  with this program; if not, write the Free Software Foundation, Inc., 59
//  Temple Place - Suite 330, Boston MA 02111-1307, USA.

// ------------------------------------------------------------------------

//  imon emulation through kqueue
//  -----------------------------
//
//  The code in this file provides an imon-like interface to FAM using kqueue,
//  the kernel event notification mechanism found in FreeBSD, NetBSD and
//  OpenBSD.
//
//  The idea is the following: a thread, kqueue_monitor, simulates the kernel
//  part of imon.  This thread can receive commands (ioctl(2)s) and produces
//  notifications when there is something to notify.  The thread is constantly
//  running in the background, calling kevent(2) to see if there are new
//  events in the monitored files since the last call.
//
//  Communication with kqueue_monitor is accomplished by using two pipes.
//  pipe_out is used by the monitor to provide notifications; i.e., it is the
//  same as the read end of the regular /dev/imon device, and produces
//  compatible messages.  On the other hand we have pipe_in, which is used
//  to give commands to the monitor (express and revoke); we can't emulate
//  ioctl(2)s from user space, so we have to go this route.
//
//  Why we use pipe_in to provide commands to the thread, instead of some
//  mutexes?  If we used mutexes, we'd have to give kevent(2) a timeout, to
//  let it "reload" the list of changes to be monitored in case it was
//  externally modified.  By using a pipe, we can tell kqueue(2) to monitor
//  it for us, and let kevent(2) immediately return when there is a command
//  to process.
//
//  However, there is a little problem when using kqueue instead of imon or
//  polling.  kqueue(2) works by monitoring open file descriptors, instead
//  of inodes on the disk.  Therefore we must keep all files being monitored
//  open, and the number of open files can quickly raise in some environments.
//  This is why the code unlimits the number of open files in imon_open and
//  sets a reasonable maximum based on kern.maxfiles (to avoid overflowing
//  it quickly).  If we overflow this limit, the poller will enter the game
//  (because we will return an error).
//
//  Known problem: if we receive *lots* of events quickly, famd may end up
//  locked.  To reproduce, run the test program provided by fam against a
//  local directory, say /tmp/foo, and do the following:
//     cd /tmp/foo; for f in $(jot 1000); do touch $(jot 100); rm *; done
//  You should receive some messages like:
//     famd[21058]: kqueue can't revoke "75", dev = 0, ino = 1113421
//  while the test is running (not a lot), and it will eventually lock up.
//
//  Having said all this, let's go to the code...

// ------------------------------------------------------------------------

#include "IMon.h"
#include "Log.h"

#include "config.h"
#include "imon-compat.h"

#include <sys/event.h>
#include <sys/param.h>
#include <sys/resource.h>
#include <sys/sysctl.h>
#include <sys/time.h>

#include <assert.h>
#include <fcntl.h>
#include <pthread.h>
#include <string.h>
#include <unistd.h>

#include <map>

// ------------------------------------------------------------------------

// devino is a structure that holds a device/inode pair.  It is used as an
// indentifier of files managed by imon.
struct devino {
    dev_t di_dev;
    ino_t di_ino;

    bool operator<(const struct devino& di) const
        { return (di_dev < di.di_dev) or
                 (di_dev == di.di_dev and di_ino < di.di_ino); }
};

// imon_cmd simulates commands thrown to imon as ioctl(2)s (but remember
// we use a pipe).
struct imon_cmd {
#define IMON_CMD_EXPRESS 0
#define IMON_CMD_REVOKE 1
    int ic_type;

    // imon identifies files through a device/inode pair.
    struct devino ic_di;

    // A pipe that will be used to receive the result of the command
    // (asynchronously).
    int ic_stat[2];

    // If this is an 'express' command, we need the descriptor to monitor.
    int ic_fd;
};

// ------------------------------------------------------------------------

static int max_changes;
static int last_change;
static int kqueue_fd;
static int pipe_in[2], pipe_out[2];
static pthread_t kevent_thread;
static struct kevent *changes;

typedef std::map<struct devino, int> DEVINOFD_MAP;
static DEVINOFD_MAP devino_to_fd;
typedef std::map<int, struct devino> FDDEVINO_MAP;
static FDDEVINO_MAP fd_to_devino;

// ------------------------------------------------------------------------

static void *kqueue_monitor(void *data);
static void process_command(void);

// ------------------------------------------------------------------------

int
IMon::imon_open(void)
{
    // Get the kernel event queue.  We only need one during all the life
    // of famd.
    kqueue_fd = kqueue();
    if (kqueue_fd == -1)
        return -1;

    // Create "emulation" pipes.
    if (pipe(pipe_in) == -1) {
        close(kqueue_fd);
        return -1;
    }
    if (pipe(pipe_out) == -1) {
        close(kqueue_fd);
        close(pipe_in[0]); close(pipe_in[1]);
        return -1;
    }

    // Get the maximum number of files we can open and use it to set a
    // limit of the files we can monitor.
    size_t len = sizeof(max_changes);
    int mib[2];

    mib[0] = CTL_KERN;
    mib[1] = KERN_MAXFILES;

    if (sysctl(mib, 2, &max_changes, &len, NULL, 0) == -1)
        max_changes = 128;
    else
        max_changes /= 2;

    // Unlimit maximum number of open files.  We don't go to RLIM_INFINITY
    // to avoid possible open descriptor leaks produce a system DoS.  75%
    // of the system limit seems a good number (we request more than the
    // number calculated previously to leave room for temporary pipes).
    // We need to be root to do this.
    uid_t olduid = geteuid();
    seteuid(0);
    struct rlimit rlp;
    rlp.rlim_cur = rlp.rlim_max = max_changes * 3 / 2;
    if (setrlimit(RLIMIT_NOFILE, &rlp) == -1)
        Log::error("can't unlimit number of open files");
    seteuid(olduid);

    changes = new struct kevent[max_changes];

    // We must monitor pipe_in for any commands that may alter the actual
    // set of files being monitored.
    EV_SET(&changes[0], pipe_in[0], EVFILT_READ,
           EV_ADD | EV_ENABLE | EV_ONESHOT, 0, 0, 0);
    last_change = 1;

    // Create a thread that will run the kevent(2) function continuously.
    if (pthread_create(&kevent_thread, NULL, kqueue_monitor, NULL) != 0) {
        close(kqueue_fd);
        close(pipe_in[0]); close(pipe_in[1]);
        close(pipe_out[0]); close(pipe_out[1]);
        return -1;
    }

    return pipe_out[0];
}

// ------------------------------------------------------------------------

IMon::Status
IMon::imon_express(const char *name, struct stat *status)
{
    // Get file information.
    struct stat sb;
    if (status == NULL)
        status = &sb;
    if (lstat(name, status) == -1)
        return BAD;

    // Open the file to be monitored; kqueue only works with open descriptors
    // so we have to keep this descriptor during the life of this 'interest'.
    int fd = open(name, O_RDONLY);
    if (fd == -1)
        return BAD;

    // Construct a command to 'express' interest in a file.  This will be
    // handled by the kqueue_monitor thread as soon as possible.
    struct imon_cmd cmd;
    cmd.ic_type = IMON_CMD_EXPRESS;
    cmd.ic_di.di_dev = status->st_dev;
    cmd.ic_di.di_ino = status->st_ino;
    cmd.ic_fd = fd;
    if (pipe(cmd.ic_stat) == -1) {
        close(fd);
        return BAD;
    }
    write(pipe_in[1], &cmd, sizeof(struct imon_cmd));

    // Wait for a result form the previous operation.
    bool result;
    read(cmd.ic_stat[0], &result, sizeof(bool));
    close(cmd.ic_stat[0]); close(cmd.ic_stat[1]);
    if (!result) {
        close(fd);
        Log::error("kqueue can't monitor more than %d files", max_changes);
        return BAD;
    }

    Log::debug("told kqueue to monitor \"%s\", descriptor = %d, dev = %d, "
               "ino = %d", name, cmd.ic_fd, cmd.ic_di.di_dev,
               cmd.ic_di.di_ino);

    return OK;
}

// ------------------------------------------------------------------------

IMon::Status
IMon::imon_revoke(const char *name, dev_t dev, ino_t ino)
{
    // Construct a command to 'revoke' interest from a file.  This will be
    // handled by the kqueue_monitor thread as soon as possible.
    struct imon_cmd cmd;
    cmd.ic_type = IMON_CMD_REVOKE;
    cmd.ic_di.di_dev = dev;
    cmd.ic_di.di_ino = ino;
    if (pipe(cmd.ic_stat) == -1)
        return BAD;
    write(pipe_in[1], &cmd, sizeof(struct imon_cmd));

    // Wait for a result form the previous operation.
    bool result;
    read(cmd.ic_stat[0], &result, sizeof(bool));
    close(cmd.ic_stat[0]); close(cmd.ic_stat[1]);
    if (!result) {
        Log::error("kqueue can't revoke \"%s\", dev = %d, ino = %d", name,
                   cmd.ic_di.di_dev, cmd.ic_di.di_ino);
        return BAD;
    }

    Log::debug("told kqueue to forget \"%s\", dev = %d, ino = %d", name,
               cmd.ic_di.di_dev, cmd.ic_di.di_ino);

    return OK;
}

// ------------------------------------------------------------------------

static void *
kqueue_monitor(void *data)
{
    struct kevent event;

    for (;;) {
        int nev = kevent(kqueue_fd, changes, last_change, &event, 1, NULL);
        if (nev == -1)
            Log::perror("kevent");
        else if (nev > 0) {
            assert(nev == 1);

            if (event.flags & EV_ERROR) {
                int fd = event.ident;

                FDDEVINO_MAP::const_iterator iter = fd_to_devino.find(fd);
                assert(iter != fd_to_devino.end());
                struct devino di = iter->second;

                Log::error("kqueue returned error for fd = %d, dev = %d, "
                           "ino = %d", fd, di.di_dev, di.di_ino);

                // Remove offending entry from the mappings.
                assert(devino_to_fd.find(di) != devino_to_fd.end());
                devino_to_fd.erase(di);
                assert(devino_to_fd.find(di) == devino_to_fd.end());
                assert(fd_to_devino.find(fd) != fd_to_devino.end());
                fd_to_devino.erase(fd);
                assert(fd_to_devino.find(fd) == fd_to_devino.end());

                // Remove the entry associated to the descriptor from the list
                // of changes monitored by kqueue.
                int i;
                for (i = 1; i < last_change; i++)
                    if (changes[i].ident == fd)
                        break;
                for (int j = i; j < last_change - 1; j++)
                    changes[j] = changes[j + 1];
                last_change--;

                close(fd);

                continue;
            }

            if (event.ident == pipe_in[0]) {
                // We have got a control command, so process it.
                process_command();
            } else {
                // One of the descriptors we are monitoring has got activity.
                FDDEVINO_MAP::const_iterator iter =
                    fd_to_devino.find(event.ident);
                if (iter != fd_to_devino.end()) {
                    qelem_t elem;

                    // Set device/inode identifier on imon element.
                    const struct devino &di = (*iter).second;
                    elem.qe_dev = di.di_dev;
                    elem.qe_inode = di.di_ino;

                    // Convert the modification flags reported by kqueue to
                    // flags understood by imon.
                    elem.qe_what = 0;
                    if (event.fflags & NOTE_DELETE)
                        elem.qe_what |= IMON_DELETE;
                    if (event.fflags & NOTE_RENAME)
                        elem.qe_what |= IMON_RENAME;
                    if (event.fflags & NOTE_ATTRIB or event.fflags & NOTE_LINK)
                        elem.qe_what |= IMON_ATTRIBUTE;
                    if (event.fflags & NOTE_WRITE or event.fflags & NOTE_EXTEND)
                        elem.qe_what |= IMON_CONTENT;

                    // Deliver the element.
                    write(pipe_out[1], &elem, sizeof(qelem_t));
                } else
                    Log::error("got an event from an unhandled device/inode "
                               "pair");
            }
        }
    }
}

// ------------------------------------------------------------------------

static void
process_command(void)
{
    bool result = false;
    struct imon_cmd cmd;

    // Read the command from the control pipe.
    read(pipe_in[0], &cmd, sizeof(struct imon_cmd));
    if (cmd.ic_type == IMON_CMD_EXPRESS) {
        Log::debug("process_command: express, dev = %d, ino = %d",
                   cmd.ic_di.di_dev, cmd.ic_di.di_ino);
        if (devino_to_fd.find(cmd.ic_di) != devino_to_fd.end()) {
            // The file is already being monitored.
            close(cmd.ic_fd);
            result = true;
        } else if (fd_to_devino.find(cmd.ic_fd) != fd_to_devino.end()) {
            // We can't receive a new interest of a descriptor that is
            // already being monitored.  If this happens, there is an
            // inconsistency in the data somewhere.
            assert(false);
        } else if (last_change < max_changes) {
            // Add the new descriptor to the list of changes to monitor.
            // We watch for any change that happens on it.
            EV_SET(&changes[last_change], cmd.ic_fd, EVFILT_VNODE,
                   EV_ADD | EV_ENABLE | EV_ONESHOT,
                   NOTE_DELETE | NOTE_WRITE | NOTE_EXTEND | NOTE_ATTRIB |
                   NOTE_LINK | NOTE_RENAME | NOTE_REVOKE,
                   0, 0);
            last_change++;

            // Map the device/inode pair to the file descriptor associated
            // to it and viceversa.  We will need this information during
            // 'revoke' and when we receive events.  We use two different
            // maps to speed up searches in both directions later.
            assert(devino_to_fd.find(cmd.ic_di) == devino_to_fd.end());
            devino_to_fd.insert
                (DEVINOFD_MAP::value_type(cmd.ic_di, cmd.ic_fd));
            assert(devino_to_fd.find(cmd.ic_di) != devino_to_fd.end());
            assert(fd_to_devino.find(cmd.ic_fd) == fd_to_devino.end());
            fd_to_devino.insert
                (FDDEVINO_MAP::value_type(cmd.ic_fd, cmd.ic_di));
            assert(fd_to_devino.find(cmd.ic_fd) != fd_to_devino.end());

            result = true;
        }
    } else if (cmd.ic_type == IMON_CMD_REVOKE) {
        Log::debug("process_command: revoke, dev = %d, ino = %d",
                   cmd.ic_di.di_dev, cmd.ic_di.di_ino);
        DEVINOFD_MAP::const_iterator iter = devino_to_fd.find(cmd.ic_di);
        if (iter != devino_to_fd.end()) {
            // Get the descriptor associated to the given device/inode pair
            // and remove the mapping from the required structure.
            int fd = (*iter).second;
            assert(devino_to_fd.find(cmd.ic_di) != devino_to_fd.end());
            devino_to_fd.erase(cmd.ic_di);
            assert(devino_to_fd.find(cmd.ic_di) == devino_to_fd.end());
            assert(fd_to_devino.find(fd) != fd_to_devino.end());
            fd_to_devino.erase(fd);
            assert(fd_to_devino.find(fd) == fd_to_devino.end());

            // Remove the entry associated to the descriptor from the list
            // of changes monitored by kqueue.
            int i;
            for (i = 1; i < last_change; i++)
                if (changes[i].ident == fd)
                    break;
            for (int j = i; j < last_change - 1; j++)
                changes[j] = changes[j + 1];
            last_change--;

            close(fd);

            result = true;
        }
    } else {
        // Huh?  Unknown command received.
        assert(false);
    }

    // Deliver the result of the operation.
    write(cmd.ic_stat[1], &result, sizeof(bool));
}
