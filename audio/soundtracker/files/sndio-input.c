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
#include <poll.h>
#include <pthread.h>
#include <unistd.h>
#include <sndio.h>

#include <glib.h>
#include <gtk/gtk.h>

#include "driver-inout.h"
#include "mixer.h"
#include "errors.h"

typedef struct sndio_in_driver {
	struct sio_hdl *hdl;
	struct sio_par par;

	pthread_t read_tid;
	int read_trun;

	void *sndbuf;
	int bufsize;
	int mf;

} sndio_in_driver;


static void *
read_thread(void *dp)
{
	sndio_in_driver *d = dp;
	struct pollfd pfd;
	int size, ret, off, nfds;

	if (!sio_start(d->hdl)) {
		error_error("could not start sndio");
		goto done;
	}

	while (d->read_trun) {
		nfds = sio_pollfd(d->hdl, &pfd, POLLIN);
		poll(&pfd, nfds, -1);
		if (sio_revents(d->hdl, &pfd) & POLLIN) {
			size = d->par.rchan * d->par.bps * d->bufsize;
			off = 0;
			while (size > 0) {
				ret = sio_read(d->hdl, d->sndbuf + off, size);
				off += ret;
				size -= ret;
			}
			sample_editor_sampled(d->sndbuf, d->bufsize,
			    d->par.rate, d->mf);
		}
	}
done:
	pthread_exit(NULL);
	return NULL;
}

static void *
sndio_new(void)
{
	sndio_in_driver *d = g_new(sndio_in_driver, 1);

	d->hdl = NULL;
	d->sndbuf = NULL;

	return d;
}

static void
sndio_release(void *dp)
{
	sndio_in_driver *d = dp;

	d->read_trun = 0;
	pthread_join(d->read_tid, NULL);

	if (d->sndbuf)
		free(d->sndbuf);
	d->sndbuf = NULL;

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
	sndio_in_driver *d = dp;
	char buf[256];

	sio_initpar(&d->par);

	d->hdl = sio_open(NULL, SIO_REC, 0);
	if (d->hdl == NULL) {
		snprintf(buf, sizeof(buf), "can't open sndio rec device");
		goto out;
	}

	d->par.rate = 44100;
	d->par.bits = 16;
	d->par.rchan = 1;
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

	if (d->par.rchan == 2) {
		d->mf |= ST_MIXER_FORMAT_STEREO;
	} else if (d->par.rchan != 1) {
		snprintf(buf, sizeof(buf), "invalid sndio channel count");
		goto out;
	}

	d->bufsize = d->par.round;

	d->sndbuf = calloc(1, d->bufsize * d->par.bps * d->par.rchan);

	d->read_trun = 1;
	if (pthread_create(&d->read_tid, NULL, read_thread, d)) {
		snprintf(buf, sizeof(buf), "couldn't spawn reading thread");
		goto out;
	}

	return TRUE;

out:
	error_error(buf);
	sndio_release(dp);
	return FALSE;
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

st_io_driver driver_in_sndio = {
	{
		"Sndio Input",
		sndio_new,
		sndio_destroy,
		sndio_open,
		sndio_release,

		sndio_getwidget,
		sndio_loadsettings,
		sndio_savesettings,
	}
};
