/*	$OpenBSD: pgwrap.c,v 1.3 2001/02/22 19:28:12 danh Exp $	*/
/*	$RuOBSD: pgwrap.c,v 1.2 2001/01/05 09:06:56 form Exp $	*/

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
 *	-o file	- Redirect stdout & stderr to file (write permissions for
 *		  PostgreSQL user required).
 */

#include <sys/types.h>
#include <err.h>
#include <libgen.h>
#include <limits.h>
#include <paths.h>
#include <pwd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "pgwrap.h"

extern char **environ;

int main __P((int, char **));
void usage __P((void));
int setupenv __P((struct passwd *));

int
main(argc, argv)
	int argc;
	char **argv;
{
	struct passwd *pw;
	char prog[PATH_MAX], *file = NULL;
	int ch, nflag = 0;

	if (getuid())
		errx(1, "must be root to run this program");

	while ((ch = getopt(argc, argv, "no:")) != -1) {
		switch (ch) {
		case 'n':
			nflag = 1;
			break;
		case 'o':
			file = optarg;
			break;
		default:
			usage();
			break;
		}
	}
	if (!(argc -= optind))
		usage();
	argv += optind;

	if ((pw = getpwnam(PGUSER)) == NULL)
		errx(1, "%s: no such user", PGUSER);

	if (initgroups(pw->pw_name, pw->pw_gid) < 0)
		err(1, "initgroups");
	if (setgid(pw->pw_gid) < 0)
		err(1, "setgid");
	if (setuid(pw->pw_uid) < 0)
		err(1, "setuid");

	if (setupenv(pw))
		errx(1, "can't initizlize environment");

	if (file != NULL) {
		if (freopen(file, "w", stdout) == NULL)
			err(1, "can't open `%s'", file);
		(void) freopen(file, "w", stderr);
	}

	if (!nflag) {
		(void) snprintf(prog, sizeof(prog), "%s/%s", PGBIN, *argv);
		*argv = prog;
		(void) execve(*argv, argv, environ);
		err(1, "execve");
	} else {
		(void) execvp(*argv, argv);
		err(1, "execvp");
	}

	/* not reached */
	return (0);
}

void
usage(void)
{
	fprintf(stderr,
	    "usage: pgwrap [-n] [-o file] cmd [arg ...]\n");
	exit(1);
}

int
setupenv(pw)
	struct passwd *pw;
{
	int rval = 0;

	rval += setenv("PGLIB", PGLIB, 0);
	rval += setenv("PGDATA", PGDATA, 0);

	rval += setenv("PATH", PGPATH, 1);
	rval += setenv("SHELL", PGSHELL, 1);
	rval += setenv("USER", pw->pw_name, 1);
	rval += setenv("LOGNAME", pw->pw_name, 1);
	rval += setenv("HOME", pw->pw_dir, 1);

	return (rval);
}
