/*	$OpenBSD: pgwrap.c,v 1.2 1999/12/09 02:57:07 form Exp $	*/

/*
 * Copyright (c) 1999 Oleg Safiullin
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice unmodified, this list of conditions, and the following
 *    disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 */

/*
 * Usage: pgwrap [-n] [-o file] cmd [arg ...]
 *
 * Execute PostgreSQL program with proper environment and uid/gid.
 * You must have root privilegies to execute this program.
 *
 * OPTIONS:
 * 	-n	- Do not add PostgreSQL binary prefix to cmd.
 *	-o file	- Redirect stdout & stderr to file (write permissions
 *		  for PostgreSQL pseudo-user or group required).
 */

#include <sys/types.h>
#include <pwd.h>
#include <unistd.h>
#include <libgen.h>
#include <stdio.h>
#include <stdlib.h>
#include <err.h>
#include <limits.h>
#include <string.h>

#include "pgwrap.h"

extern char **environ;

void usage(void);
int main(int, char **);

void
usage(void)
{
	fprintf(stderr, "usage: pgwrap [-n] [-o file] cmd [arg ...]\n");
	exit(1);
}

int
main(argc, argv)
	int argc;
	char **argv;
{
	struct passwd *pw;
	char prog[_POSIX_PATH_MAX], *file = NULL;
	int ch, nflag = 0;

	while ((ch = getopt(argc, argv, "no:")) != -1) {
		switch (ch) {
		case 'n':
			nflag = 1;
			break;
		case 'o':
			file = optarg;
			break;
		case '?':
		default:
			usage();
			break;
		}
	}
	if (!(argc -= optind))
		usage();
	argv += optind;

	if (getuid())
		errx(1, "must be root to run this program");
	if ((pw = getpwnam(PGUSER)) == NULL)
		errx(1, "%s: no such user", PGUSER);

	(void) setgroups(0, NULL);
	(void) setgid(pw->pw_gid);
	(void) setuid(pw->pw_uid);

	if (file) {
		if (freopen(file, "w", stdout) == NULL)
			err(1, "can't open `%s'", file);
		(void) freopen(file, "w", stderr);
	}

	if (setenv("PGLIB", PGLIB, 0) < 0 || setenv("PGDATA", PGDATA, 0) < 0
		|| setenv("PATH", PGPATH, 1) < 0
		|| setenv("SHELL", PGSHELL, 1) < 0
		|| setenv("USER", PGUSER, 1) < 0
		|| setenv("LOGNAME", PGUSER, 1) < 0
		|| setenv("HOME", PGHOME, 1) < 0)
			err(1, "can't set environment");

	if (!nflag) {
		(void) snprintf(prog, sizeof(prog), "%s/%s", PGBIN, *argv);
		*argv = prog;
	}
	(void) execve(*argv, argv, environ);
	err(1, "can't execute `%s'", *argv);

	/* not reached */
	return (0);
}
