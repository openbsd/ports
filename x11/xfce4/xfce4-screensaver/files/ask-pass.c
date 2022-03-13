/*
 * verifying typed passwords with bsd_auth(3)
 *
 * Copyright (c) 2009 Antoine Jacoutot <ajacoutot@openbsd.org>
 * Copyright (c) 2021 Landry Breuil <landry@openbsd.org>
 * Copyright (c) 2021 Natanael Copa <ncopa@alpinelinux.org>
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

#include <stdio.h>
#include <signal.h>
#include <err.h>
#include <fcntl.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <pwd.h>
#include <sys/types.h>

#include <login_cap.h>
#include <bsd_auth.h>

static void sighandler(int sig)
{
	if (sig > 0)
		errx(sig, "caught signal %d", sig);
}

static void setup_signals(void)
{
	struct sigaction action;

	memset((void *) &action, 0, sizeof(action));
	action.sa_handler = sighandler;
	action.sa_flags = SA_RESETHAND;
	sigaction(SIGILL, &action, NULL);
	sigaction(SIGTRAP, &action, NULL);
	sigaction(SIGBUS, &action, NULL);
	sigaction(SIGSEGV, &action, NULL);
	action.sa_handler = SIG_IGN;
	action.sa_flags = 0;
	sigaction(SIGTERM, &action, NULL);
	sigaction(SIGHUP, &action, NULL);
	sigaction(SIGINT, &action, NULL);
	sigaction(SIGQUIT, &action, NULL);
	sigaction(SIGALRM, &action, NULL);
}

int
main (int argc, const char *argv[]) {
	char pass[8192];
	int res, fd;

	/* Make sure standard file descriptors are connected */
	while ((fd = open("/dev/null", O_RDWR)) <= 2);
	close(fd);

	setup_signals();

	char *user = getlogin();
	if (user == NULL)
		err (1, "failed to get login name");

	int npass = read(STDIN_FILENO, pass, sizeof(pass)-1);
	if (npass < 0)
		err(1, "error reading password");
	pass[npass] = '\0';

	/* authenticate */
	res = auth_userokay((char *)user, NULL, "auth-xfce-screensaver", pass);
	if (!res)
		sleep(2);
	return !res;
}
