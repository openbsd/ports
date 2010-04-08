/*
 * Copyright (c) 2009 Jacob Meuser <jakemsr@sdf.lonestar.org>
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


#include <config.h>

#include <stdio.h>
#include <stdlib.h>

#include <unistd.h>
#include <sndio.h>

#include <glib.h>
#include <gtk/gtk.h>

#include "driver-inout.h"
#include "mixer.h"
#include "errors.h"

typedef struct sndio_driver {
	struct sio_hdl *hdl;
	struct sio_par par;

	void *sndbuf;
	int bufsize;
	int mf;

	long long realpos;

	gpointer polltag;

} sndio_driver;

/* XXX */
void *
sndio_driver_get_hdl(void *dp)
{
	sndio_driver *d = dp;
	return d->hdl;
}

static void
movecb(void *arg, int delta)
{
	sndio_driver *d = arg;
	d->realpos += delta;
}

static void
sndio_poll_ready_playing(gpointer data, gint source,
    GdkInputCondition condition)
{
	sndio_driver *d = data;
	static int size;

	audio_mix(d->sndbuf, d->bufsize, d->par.rate, d->mf);

	size = d->par.pchan * d->par.bps * d->bufsize;
	sio_write(d->hdl, d->sndbuf, size);
}

static void *
sndio_new(void)
{
	sndio_driver *d = g_new(sndio_driver, 1);

	d->hdl = NULL;
	d->sndbuf = NULL;
	d->polltag = NULL;

	return d;
}

static void
sndio_release(void *dp)
{
	sndio_driver *d = dp;

	if (d->sndbuf)
		free(d->sndbuf);
	d->sndbuf = NULL;

	if (d->polltag != NULL)
		audio_poll_remove(d->polltag);
	d->polltag = NULL;

	if (d->hdl)
		sio_close(d->hdl);
	d->hdl = NULL;
}

static void
sndio_destroy(void *dp)
{
	/* just in case */
	sndio_release(dp);

	g_free(dp);
}

static gboolean
sndio_open(void *dp)
{
	sndio_driver *d = dp;
	char buf[256];

	sio_initpar(&d->par);

	d->hdl = sio_open(NULL, SIO_PLAY, 0);
	if (d->hdl == NULL) {
		snprintf(buf, sizeof(buf), "can't open sndio device");
		goto out;
	}

	d->par.rate = 44100;
	d->par.bits = 16;
	d->par.pchan = 2;
	d->par.appbufsz = 2048;

	if (!sio_setpar(d->hdl, &d->par) || !sio_getpar(d->hdl, &d->par)) {
		snprintf(buf, sizeof(buf), "can't configure sndio device");
		goto out;
	}

	if (d->par.bits == 16) {
		if (d->par.sig) {
			if (d->par.le)
				d->mf = ST_MIXER_FORMAT_S16_LE;
			else
				d->mf = ST_MIXER_FORMAT_S16_BE;
		} else {
			if (d->par.le)
				d->mf = ST_MIXER_FORMAT_U16_LE;
			else
				d->mf = ST_MIXER_FORMAT_U16_BE;
		}
	} else if (d->par.bits == 8) {
		if (d->par.sig)
			d->mf = ST_MIXER_FORMAT_S8;
		else
			d->mf = ST_MIXER_FORMAT_U8;
	} else {
		snprintf(buf, sizeof(buf), "invalid sndio bit-depth");
		goto out;
	}

	if (d->par.pchan == 2) {
		d->mf |= ST_MIXER_FORMAT_STEREO;
	} else if (d->par.pchan != 1) {
		snprintf(buf, sizeof(buf), "invalid sndio channel count");
		goto out;
	}

	d->bufsize = d->par.round;

	d->sndbuf = calloc(1, d->bufsize * d->par.bps * d->par.pchan);

	sio_onmove(d->hdl, movecb, d);

	if (!sio_start(d->hdl)) {
		snprintf(buf, sizeof(buf), "could not start sndio");
		goto out;
	}

	d->polltag = audio_poll_add(-1, GDK_INPUT_WRITE,
	    sndio_poll_ready_playing, d);

	return TRUE;

out:
	error_error(buf);
	sndio_release(dp);
	return FALSE;
}

static double
sndio_get_play_time(void *dp)
{
	sndio_driver *d = dp;

	/* time buffered */
	return (float)d->realpos / d->par.rate;
}

static inline int
sndio_get_play_rate(void *dp)
{
	sndio_driver *d = dp;
	return d->par.rate;
}

static GtkWidget *
sndio_getwidget(void *dp)
{
	return NULL;
}

static gboolean
sndio_loadsettings(void *dp, prefs_node *f)
{
	return TRUE;
}

static gboolean
sndio_savesettings(void *dp, prefs_node *f)
{
	return TRUE;
}

st_io_driver driver_out_sndio = {
	{
		"Sndio Output",
		sndio_new,
		sndio_destroy,
		sndio_open,
		sndio_release,

		sndio_getwidget,
		sndio_loadsettings,
		sndio_savesettings,
	},

	sndio_get_play_time,
	sndio_get_play_rate
};
