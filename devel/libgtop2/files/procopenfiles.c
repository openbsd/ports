/* $OpenBSD: procopenfiles.c,v 1.2 2011/05/23 19:35:55 jasper Exp $	*/

/* Copyright (C) 1998-99 Martin Baulig
   Copyright (C) 2004 Nicolás Lichtmaier
   Copyright (C) 2007 Joe Marcus Clarke
   This file is part of LibGTop 1.0.

   Modified by Nicolás Lichtmaier to give a process open files.

   Contributed by Martin Baulig <martin@home-of-linux.org>, April 1998.

   LibGTop is free software; you can redistribute it and/or modify it
   under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2 of the License,
   or (at your option) any later version.

   LibGTop is distributed in the hope that it will be useful, but WITHOUT
   ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
   FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
   for more details.

   You should have received a copy of the GNU General Public License
   along with LibGTop; see the file COPYING. If not, write to the
   Free Software Foundation, Inc., 59 Temple Place - Suite 330,
   Boston, MA 02111-1307, USA.
*/

#include <config.h>
#include <glibtop.h>
#include <glibtop/error.h>
#include <glibtop/procopenfiles.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/param.h>
#include <sys/sysctl.h>
#include <sys/un.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <string.h>
#include <stdlib.h>

#include "glibtop_private.h"

static const unsigned long _glibtop_sysdeps_proc_open_files =
(1L << GLIBTOP_PROC_OPEN_FILES_NUMBER)|
(1L << GLIBTOP_PROC_OPEN_FILES_TOTAL)|
(1L << GLIBTOP_PROC_OPEN_FILES_SIZE);

/* Init function. */

void
_glibtop_init_proc_open_files_s (glibtop *server)
{
	server->sysdeps.proc_open_files = _glibtop_sysdeps_proc_open_files;
}

static GArray *
parse_output(const char *output) {
	GArray *entries;
	char **lines;
	char  *ftype = NULL;
	char  *fname = NULL;
	guint  i;
	guint  len;
	int    fd = -1;

	entries = g_array_new(FALSE, FALSE, sizeof(glibtop_open_files_entry));

	lines = g_strsplit(output, "\n", 0);
	len = g_strv_length(lines);

	for (i = 0; i < len && lines[i]; i++) {
		glibtop_open_files_entry entry = {0};

		if (strlen(lines[i]) < 2)
			continue;

		if (!g_str_has_prefix(lines[i], "f") &&
		    !g_str_has_prefix(lines[i], "t") &&
		    !g_str_has_prefix(lines[i], "n"))
			continue;

		if (g_str_has_prefix(lines[i], "f")) {
			if (!g_ascii_isdigit(*(lines[i] + 1)))
				i += 2;
			else
				fd = atoi(lines[i] + 1);
			continue;
		}

		if (g_str_has_prefix(lines[i], "t")) {
			ftype = lines[i];
			ftype++;
			continue;
		} else {
			fname = lines[i];
			fname++;
		}

		if (ftype == NULL || fname == NULL)
			continue;

		if (!strcmp(ftype, "unix")) {
			entry.type = GLIBTOP_FILE_TYPE_LOCALSOCKET;
			g_strlcpy(entry.info.localsock.name, fname,
			  	  sizeof(entry.info.localsock.name));
		} else if (!strcmp(ftype, "PIPE")) {
			entry.type = GLIBTOP_FILE_TYPE_PIPE;
		} else if (!strcmp(ftype, "VREG") ||
			   !strcmp(ftype, "GDIR") ||
			   !strcmp(ftype, "GREG") ||
			   !strcmp(ftype, "VCHR") ||
			   !strcmp(ftype, "VBLK") ||
			   !strcmp(ftype, "DIR")  ||
			   !strcmp(ftype, "LINK") ||
			   !strcmp(ftype, "REG")  ||
			   !strcmp(ftype, "VDIR")) {
			entry.type = GLIBTOP_FILE_TYPE_FILE;
			g_strlcpy(entry.info.file.name, fname,
				  sizeof(entry.info.file.name));
		} else if (!strcmp(ftype, "IPv4")) {
			char **hosts;
			char **remote_host;

			if (!strstr(fname, "->")) {
				remote_host = g_strsplit(fname, ":", 0);
			} else {
				hosts = g_strsplit(fname, "->", 0);
				if (g_strv_length(hosts) < 2) {
					g_strfreev(hosts);
					continue;
				}

				remote_host = g_strsplit(hosts[1], ":", 0);
				g_strfreev(hosts);
			}

			if (g_strv_length(remote_host) < 2) {
				g_strfreev(remote_host);
				continue;
			}

			entry.type = GLIBTOP_FILE_TYPE_INETSOCKET;
			if (!strcmp(remote_host[0], "*"))
				g_strlcpy(entry.info.sock.dest_host, "0.0.0.0",
					  sizeof(entry.info.sock.dest_host));
			else
				g_strlcpy(entry.info.sock.dest_host,
					  remote_host[0],
					  sizeof(entry.info.sock.dest_host));
			entry.info.sock.dest_port = atoi(remote_host[1]);

			g_strfreev(remote_host);
		} else if (!strcmp(ftype, "IPv6")) {
			char **hosts;
			char **remote_host;

			if (!strstr(fname, "->")) {
				remote_host = g_strsplit(fname, ":", 0);
			} else {
				hosts = g_strsplit(fname, "->", 0);
				if (g_strv_length(hosts) < 2) {
					g_strfreev(hosts);
					continue;
				}

				remote_host = g_strsplit(hosts[1], "]", 0);
				g_strfreev(hosts);
			}

			if (g_strv_length(remote_host) < 2) {
				g_strfreev(remote_host);
				continue;
			}

			entry.type = GLIBTOP_FILE_TYPE_INET6SOCKET;
			if (!strcmp(remote_host[0], "*"))
				g_strlcpy(entry.info.sock.dest_host, "0.0.0.0",
					  sizeof(entry.info.sock.dest_host));
			else
				g_strlcpy(entry.info.sock.dest_host,
					  remote_host[0] + 1,
					  sizeof(entry.info.sock.dest_host));
			entry.info.sock.dest_port = atoi(remote_host[1] + 1);

			g_strfreev(remote_host);
		} else
			continue;

		entry.fd = fd;

		fd = -1;
		ftype = NULL;
		fname = NULL;

		g_array_append_val(entries, entry);
	}

	g_strfreev(lines);

	return entries;
}

glibtop_open_files_entry *
glibtop_get_proc_open_files_s (glibtop *server, glibtop_proc_open_files *buf,	pid_t pid)
{
	char *output;
	GArray *entries;

	memset(buf, 0, sizeof (glibtop_proc_open_files));

	output = execute_lsof(pid);
	if (output == NULL) return NULL;

	entries = parse_output(output);

	g_free(output);

	buf->flags = _glibtop_sysdeps_proc_open_files;
	buf->number = entries->len;
	buf->size = sizeof(glibtop_open_files_entry);
	buf->total = buf->number * buf->size;

	return (glibtop_open_files_entry*)g_array_free(entries, FALSE);
}
