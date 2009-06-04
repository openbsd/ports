/* $OpenBSD: gs-auth-bsdauth.c,v 1.1 2009/06/04 00:45:39 ajacoutot Exp $
 * gs-auth-bsdauth.c --- verifying typed passwords with bsd_auth(3)
 *
 * Copyright (c) 1993-1998 Jamie Zawinski <jwz@jwz.org>
 * Copyright (C) 2006 William Jon McCann <mccann@jhu.edu>
 * Copyright (c) 2009 Antoine Jacoutot <ajacoutot@openbsd.org>
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

#include "config.h"

#include <stdio.h>
#include <signal.h>
#include <stdlib.h>
#include <string.h>
#ifdef HAVE_UNISTD_H
#include <unistd.h>
#endif
#include <pwd.h>
#include <sys/types.h>

#include <login_cap.h>
#include <bsd_auth.h>

#include "gs-auth.h"
#include "subprocs.h"

static gboolean verbose_enabled = FALSE;

GQuark
gs_auth_error_quark (void)
{
	static GQuark quark = 0;
	if (! quark) {
		quark = g_quark_from_static_string ("gs_auth_error");
	}

	return quark;
}

void
gs_auth_set_verbose (gboolean enabled)
{
	verbose_enabled = enabled;
}

gboolean
gs_auth_get_verbose (void)
{
	return verbose_enabled;
}

gboolean
gs_auth_verify_user (const char       *username,
                     const char       *display, 
                     GSAuthMessageFunc func,
                     gpointer          data,
                     GError          **error)
{
	int res;
	char *password;

	/* ask for the password for user */
	if (func != NULL) {
		func (GS_AUTH_MESSAGE_PROMPT_ECHO_OFF,
		    "Password: ",
		    &password,
		    data);
	}

	if (password == NULL) {
		return FALSE;
	}

	/* authenticate */
	if (res = auth_userokay(username, NULL, "auth-gnome-screensaver", password)) {
		return TRUE;
	} else {
		return FALSE;
	}
}

gboolean
gs_auth_init (void)
{
	return TRUE;
}

gboolean
gs_auth_priv_init (void)
{
	return TRUE;
}
