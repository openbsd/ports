/* $OpenBSD: term.c,v 1.1 1999/12/01 16:22:01 espie Exp $ */
/*-
 * Copyright (c) 1999 Marc Espie.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. All advertising materials mentioning features or use of this software
 *    must display the following acknowledgement:
 *	This product includes software developed by Marc Espie for the OpenBSD
 * Project.
 *
 * THIS SOFTWARE IS PROVIDED BY THE OPENBSD PROJECT AND CONTRIBUTORS 
 * ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT 
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR 
 * A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE OPENBSD
 * PROJECT OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, 
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT 
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, 
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY 
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT 
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE 
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/* Set terminal discipline to non blocking io and such.  */

#include <signal.h>
#include <ctype.h>
#include <unistd.h>
#include <stdlib.h>

#include <sys/types.h>
#include <sys/termios.h>	
#include <errno.h>

#include "mpg123.h"

#ifdef TERM_CONTROL

static void sane_tty(void);
static void suspend(int sig);
static int run_in_fg(void);
static void if_fg_sane_tty(void);
static int may_getchar(void);
static void set_raw(int);

static struct termios sanity;
static struct termios *psanity = NULL;

static int is_fg;

#ifdef SIGTSTP
static void suspend(int sig)
{
	sane_tty();
	signal(SIGTSTP, SIG_DFL);
	kill(0, SIGTSTP);
}
#endif

static int run_in_fg(void)
{
	pid_t val;

		/* this should work on every unix */
	if (!isatty(fileno(stdin)) || !isatty(fileno(stdout)))
		return 0;

	val = tcgetpgrp(fileno(stdin));
	if (val == -1) {
		if (errno == ENOTTY)
			return 0;
		else
			return 1;
	}
	if (val == getpgrp())
		return 1;
	else
		return 0;
}

/* if_fg_sane_tty():
 * restore tty modes, _only_ if running in foreground
 */
static void if_fg_sane_tty(void)
{
	if (run_in_fg())
		sane_tty();
}


static void set_raw(int sig)
{
	struct termios zap;

#ifdef SIGTSTP
	signal(SIGTSTP, suspend);
#endif
#ifdef SIGCONT
	signal(SIGCONT, set_raw);
#endif
	if (run_in_fg()) {
		tcgetattr(fileno(stdin), &zap);
		zap.c_cc[VMIN] = 0;     /* can't work with old */
		zap.c_cc[VTIME] = 0; /* FreeBSD versions    */
		zap.c_lflag &= ~(ICANON|ECHO|ECHONL);
		tcsetattr(fileno(stdin), TCSADRAIN, &zap);
		is_fg = TRUE;
	} else
		is_fg = FALSE;
}

/* nonblocking_io():
 * try to setup the keyboard to non blocking io
 */
void term_init(void)
{
	if (!psanity) {
		psanity = &sanity;
		tcgetattr(fileno(stdin), psanity);
	}
	set_raw(0);
	atexit(if_fg_sane_tty);
}


/* sane_tty():
 * restores everything to a sane state before returning to shell */
static void sane_tty(void)
{
	tcsetattr(fileno(stdin), TCSADRAIN, psanity);
}

static int may_getchar(void)
{
	char buffer;

	if (run_in_fg() && !is_fg)
	       set_raw(0);
	if (run_in_fg() && read(fileno(stdin), &buffer, 1))
	       return buffer;
	return EOF;
}

void term_control(void)
{
	int val = may_getchar();

	if (val == 'b' || val == 'B')
		rd->rewind(rd);
}
	
#endif
