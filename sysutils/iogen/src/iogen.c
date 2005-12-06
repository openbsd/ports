/* $OpenBSD: iogen.c,v 1.2 2005/12/06 17:38:58 marco Exp $ */
/*
 * Copyright (c) 2005 Marco Peereboom <marco@peereboom.us>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 */

#include <ctype.h>
#include <err.h>
#include <errno.h>
#include <limits.h>
#include <signal.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <syslog.h>
#include <time.h>
#include <unistd.h>

#include <sys/param.h>
#include <sys/stat.h>
#include <sys/types.h>

#define LOGFATAL	0x01
#define LOGERR		0x02

#define MINFILESIZE	(262400llu)
#define MAXFILESIZE	(10737418240llu)
#define MAXIOSIZE	(10485760llu)
#define MINIOSIZE	(1llu)

/* signal handler flags */
volatile sig_atomic_t	run = 1;
volatile sig_atomic_t	print_stats = 0;
volatile sig_atomic_t	update_res = 0;

/* globals */
off_t			file_size;
off_t			io_size;
int			interval;
int			read_perc;
int			randomize;
char			target_dir[MAXPATHLEN];
char			result_dir[MAXPATHLEN];

char			*io_pattern[] = {
			    "The quick brown fox jumps over the lazy dog. ",
			    "tHE QUICK BROWN FOX JUMPS OVER THE LAZY DOG. ",
			    "boo hoo hoo iogen is hurting my little disks ",
			    NULL
};

/* externs */
extern char	*__progname;

void
killall(void)
{
	char		s[MAXPATHLEN];

	switch (fork()) {
	case -1:
		err(1, "could not kill all processes");
		/* NOTREACHED */
		break;
	case 0:
		/* XXX clean this up */
		sleep(2); /* wait until dad dies */
		snprintf(s, sizeof s, "/usr/bin/pkill %s", __progname);
		system(s);
		exit(0);
		/* NOTREACHED */
	default:
		exit(0);
		/* NOTREACHED */
		break;
	}
}

void
usage(void)
{
	fprintf(stderr, "usage: %s [-rk] [-s size] [-b size] [-p percentage] "
	    "[-d path] [-f path] [-n processes] [-t interval]\n", __progname);
	fprintf(stderr, "-h this help\n");
	fprintf(stderr, "-s <file size> [k|m|g]; Default = 1g\n");
	fprintf(stderr, "-b <io size> [k|m]; Default = 64k\n");
	fprintf(stderr, "-p <read percentage>; Default = 50\n");
	fprintf(stderr, "-r randomize io block size; Default = no\n");
	fprintf(stderr, "-d <target directory>; Default = current directory\n");
	fprintf(stderr, "-f <result directory>; Default = iogen.res\n");
	fprintf(stderr, "-n <number of io processes>; Default = 1\n");
	fprintf(stderr, "-t <seconds between update>; Default = 60 seconds\n");
	fprintf(stderr, "-k kill all running io processes\n\n");
	fprintf(stderr, "If parameters are omited defaults will be used.\n");
	exit(0);
}

unsigned long long
quantify(char quant)
{
	unsigned long long	val;

	if (isdigit(quant))
		return (1);

	quant = tolower(quant);

	switch (quant) {
	case 'k':
		val = 1024;
		break;
	case 'm':
		val = 1024 * 1024;
		break;
	case 'g':
		val = 1024 * 1024 * 1024;
		break;
	default:
		errx(1, "invalid quantifier");
		/* NOTREACHED */
		break;
	}

	return (val);
}

void
sigterm(int sig)
{
	run = 0;
}

void
sighup(int sig)
{
	print_stats = 1;
}

void
sigalarm(int sig)
{
	update_res = 1;
}

void
err_log(int flags, const char *fmt, ...)
{
	va_list		ap;
	char		buf[256];
	int		errno_save = errno;

	va_start(ap, fmt);
	vsnprintf(buf, sizeof buf, fmt, ap);
	va_end(ap);

	if (flags & LOGERR)
		strlcat(buf, strerror(errno_save), sizeof buf);

	syslog(flags & LOGFATAL ? LOG_CRIT : LOG_NOTICE, buf);

	if (flags & LOGFATAL)
		exit(1);
}

void
fill_buffer(char *buffer, size_t size)
{
	long long	i = 0, more = 1;
	char		*p = buffer;
	size_t		copy_len;

	while (more) {
		if (io_pattern[i] == NULL)
			i = 0;

		copy_len = strlen(io_pattern[i]);
		if ((p + copy_len) > (buffer + size))
			copy_len = (buffer + size) - p;
		memcpy(p, io_pattern[i], copy_len);
		p += copy_len;
		i++;
		if (p == buffer + size)
			more = 0;
		else if (p > buffer + size)
			err(1, "buffer overflow in fill pattern");
	}
}

off_t
get_file_size(char *filename)
{
	struct stat sb;

	if (stat(filename, &sb) == -1)
		err_log(LOGFATAL | LOGERR,
		    "stat failed in proces %i", getpid());

	return (sb.st_size);
}

int
run_io(void)
{
	pid_t		pid;
	int		rv;
	unsigned int	i, max_reads, max_writes;
	char		*src, *dst;
	char		path_buf[MAXPATHLEN];
	FILE		*iofile, *resfile;
	off_t		io_spot;
	size_t		rand_buf;
	int		reached_max = 0;
	time_t		tm;

	/* statistics */
	off_t		total = 0, read_total = 0, write_total = 0;
	off_t		write_block = 0, read_block = 0;

	switch (pid = fork()) {
	case -1:
		err(1, "could not fork");
		/* NOTREACHED */
		break;
	case 0:
		break;
	default:
		return (pid);
		/* NOTREACHED */
		break;
	}

	/* child */
	if (signal(SIGTERM, sigterm) == SIG_ERR)
		err(1, "could not install TERM handler in process %i",
		    getpid());
	if (signal(SIGHUP, sighup) == SIG_ERR)
		err(1, "could not install HUP handler in process %i",
		    getpid());
	if (signal(SIGALRM, sigalarm) == SIG_ERR)
		err(1, "could not install ALARM handler in process %i",
		    getpid());

	/* poor mans memory test */
	src = malloc(io_size);
	if (!src)
		err(1, "malloc failed in process %i", getpid());
	fill_buffer(src, io_size);

	dst = malloc(io_size);
	if (!dst)
		err(1, "malloc failed in process %i", getpid());
	fill_buffer(dst, io_size);

	if (memcmp(src, dst, io_size) != 0)
		errx(1, "source and destination buffer not the same");

	if (realpath(target_dir, path_buf) == NULL)
		err(1, "invalid destination path %s", target_dir);
	rv = snprintf(target_dir, sizeof target_dir, "%s/%s_%i.io",
	    path_buf, __progname, getpid());
	if (rv == -1 || rv > sizeof target_dir)
		err(1, "destination path name invalid or too long");
	iofile = fopen(target_dir, "w+");
	if (!iofile)
		err(1, "could not create io file");

	if (realpath(result_dir, path_buf) == NULL)
		err(1, "invalid result path %s", result_dir);
	rv = snprintf(result_dir, sizeof result_dir, "%s/%s_%i.res",
	    path_buf, __progname, getpid());
	if (rv == -1 || rv > sizeof result_dir)
		err(1, "result path name invalid or too long");
	resfile = fopen(result_dir, "w+");
	if (!resfile)
		err(1, "could not create res file");

	for (i = 0; i < 10; i++) {
		write_block = fwrite(src, io_size, 1, iofile);
		if (write_block != 1)
			err(1, "could not write initial file data in %i",
			    getpid());

		total += write_block * io_size;
		write_total = total;
	}

	alarm(interval);

	max_reads = read_perc / 5;
	max_writes = (100 - read_perc) / 5;
	while (run) {
		if (print_stats) {
			print_stats = 0;
			time(&tm);
			fprintf(stderr,
			    "%.15s: total: %llu read: %llu write: %llu\n",
			    ctime(&tm) + 4, total, read_total , write_total);
			fflush(stderr);
		}

		if (update_res) {
			update_res = 0;
			time(&tm);
			fprintf(resfile,
			    "%.15s: total: %llu read: %llu write: %llu\n",
			    ctime(&tm) + 4, total, read_total , write_total);
			fflush(resfile);
			alarm(interval);
		}

		/* reads */
		for (i = 0; i < max_reads; i++) {
			io_spot = get_file_size(target_dir) / io_size - 1;
			io_spot = (arc4random() % io_spot + 1) * io_size;
			rand_buf = 0;
			if (randomize)
				rand_buf = arc4random() % io_size;
			
			fseeko(iofile, io_spot, SEEK_SET);
			read_block = fread(dst, io_size - rand_buf, 1, iofile);
			if (read_block) {
				total += io_size - rand_buf;
				read_total += io_size - rand_buf;
			}	
			else
				err_log(LOGFATAL | LOGERR,
				    "could not read from file in process %i",
				    getpid());

			if (!randomize)
				if (memcmp(src, dst, io_size) != 0)
					err_log(LOGFATAL,
					    "source and destination "
					    "buffer not the same in process %i",
					    getpid());
		}

		/* writes */
		for (i = 0; i < max_writes; i++) {
			if (!reached_max)
				fseeko(iofile, 0, SEEK_END);
			else {
				io_spot = get_file_size(target_dir) /
				    io_size - 1;
				io_spot = (arc4random() % io_spot + 1) *
				    io_size;
				fseeko(iofile, io_spot, SEEK_SET);
			}

			rand_buf = 0;
			if (randomize)
				rand_buf = arc4random() % io_size;

			write_block = fwrite(src, io_size - rand_buf,
			    1, iofile);
			if (write_block) {
				total += io_size - rand_buf;
				write_total += io_size - rand_buf;
			}
			else
				err(LOGFATAL | LOGERR,
				    "could not write to file in process %i",
				    getpid());
		}
		if (write_total >= file_size) {
			if (reached_max != 1)
				err_log(0, "file reached maximum size in "
				    "process %i\n", getpid());
			reached_max = 1;
		}
	}

	err_log(0, "%i exiting with total: %llu read: %llu write: %llu",
	    getpid(), total, read_total , write_total);

	free(src);
	free(dst);

	fclose(iofile);
	fclose(resfile);

	exit(0);

	/* NOTREACHED */
	return (0);
}

int
main(int argc, char *argv[])
{
	char		ch;
	int		i, nr_proc = 1;
	struct stat	sb;

	/* set defaults */
	io_size = 64 * 1024;
	file_size = 1 * 1024 * 1024 * 1024;
	read_perc = 50;
	randomize = 0;
	interval = 60;
	strlcpy(target_dir, "./", sizeof target_dir);
	strlcpy(result_dir, "./", sizeof result_dir);

	while ((ch = getopt(argc, argv, "b:d:f:kn:p:rs:t:")) != -1) {
		switch (ch) {
		case 'b':
			io_size = atoll(optarg) *
			    quantify(optarg[strlen(optarg) - 1]);

			if (io_size < MINIOSIZE)
				errx(1, "io block size too small");
			if (io_size > MAXIOSIZE)
				errx(1, "io block size too large");
			break;
		case 'd':
			if (stat(optarg, &sb) == -1)
				err(1, "stat failed");
			else
				if (sb.st_mode & S_IFDIR)
					strlcpy(target_dir, optarg,
					    sizeof target_dir);
				else
					errx(1, "invalid target path");
			break;
		case 'f':
			if (stat(optarg, &sb) == -1)
				err(1, "stat failed");
			else
				if (sb.st_mode & S_IFDIR)
					strlcpy(result_dir, optarg,
					    sizeof result_dir);
				else
					errx(1, "invalid result path");
			break;
		case 'k':
			killall();
			/* NOTREACHED */
			break;
		case 'n':
			nr_proc = atol(optarg);

			if (nr_proc < 1)
				errx(1, "invalid number of processes");
			break;
		case 'p':
			read_perc = atol(optarg);

			if (read_perc < 10)
				errx(1, "read percentage size too small");
			if (read_perc > 90)
				errx(1, "read percentage size too large");
			break;
		case 'r':
			randomize = 1;
			break;
		case 's':
			file_size = atoll(optarg) *
			    quantify(optarg[strlen(optarg) - 1]);

			if (file_size < MINFILESIZE)
				errx(1, "file size too small");
			if (file_size > MAXFILESIZE)
				errx(1, "file size too large");
			break;
		case 't':
			interval = atoi(optarg);

			if (interval < 1)
				errx(1, "time slice too small");
			if (interval > 3600)
				errx(1, "time slice too large");
			break;
		case 'h':
		default:
			usage();
			/* NOTREACHED */
			break;
		}
	}

	err_log(0, "%s test run commences with %u proc(s)",
	    VERSION, nr_proc);
	err_log(0,
	    "file size: %llu io size: %llu read percentage: %i random: %s "
	    "target: %s result: %s update interval: %i",
	    file_size, io_size, read_perc, randomize ? "yes" : "no",
	    target_dir, result_dir, interval);

	for (i = 0; i < nr_proc; i++)
		fprintf(stderr, "child spawned %i\n", run_io());

	return (0);
}
