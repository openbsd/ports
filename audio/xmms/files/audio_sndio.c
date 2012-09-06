/*
 * Copyright (c) 2008-2010 Thomas Pfaff <tpfaff@tp76.info>
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

#include <errno.h>
#include <poll.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include <gtk/gtk.h>
#include <libxmms/util.h>
#include <libxmms/configfile.h>
#include <pthread.h>
#include <sndio.h>
#include <xmms/i18n.h>
#include <xmms/plugin.h>

#define VERSION "1.1"
#define XMMS_MAXVOL 100

static void op_init (void);
static void op_about (void);
static void op_configure (void);
static void op_get_volume (int *, int *);
static void op_set_volume (int, int);
static int op_open (AFormat, int, int);
static void op_write (void *, int);
static void op_close (void);
static void op_seek (int);
static void op_pause (short);
static int op_buffer_free (void);
static int op_playing (void);
static int op_get_output_time (void);
static int op_get_written_time (void);

static void configure_win_ok_cb(GtkWidget *, gpointer);
static void configure_win_cancel_cb(GtkWidget *, gpointer);
static void configure_win_destroy(void);

static struct sio_par par;
static struct sio_hdl *hdl;
static long long rdpos;
static long long wrpos;
static int paused, restarted, volume;
static int pause_pending, flush_pending, volume_pending;
static long bytes_per_sec;
static AFormat afmt;
static pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;

static GtkWidget *configure_win;
static GtkWidget *adevice_entry;
static gchar *audiodev;

static OutputPlugin sndio_op = {
	NULL,
	NULL,
	"sndio Output Plugin " VERSION,
	op_init,
	op_about,
	op_configure,
	op_get_volume,
	op_set_volume,
	op_open,
	op_write,
	op_close,
	op_seek,
	op_pause,
	op_buffer_free,
	op_playing,
	op_get_output_time,
	op_get_written_time
};

OutputPlugin *
get_oplugin_info (void)
{
	return &sndio_op;
}

static void
reset(void)
{
	if (!restarted) {
		restarted = 1;
		sio_stop(hdl);
		sio_start(hdl);
		rdpos = wrpos;
	}
}
static void
onmove_cb (void *addr, int delta)
{
	rdpos += delta * (int)(par.bps * par.pchan);
}

static void
onvol_cb(void *addr, unsigned ctl)
{
	/* Update volume only if it actually changed */
	if (ctl != volume * SIO_MAXVOL / 100)
		volume = ctl * 100 / SIO_MAXVOL;
}

static void
pending_events(void)
{
	if (volume_pending) {
		sio_setvol(hdl, volume * SIO_MAXVOL / 100);
		volume_pending = 0;
	}
	if (flush_pending) {
		reset();
		flush_pending = 0;
	}
	if (pause_pending) {
		if (paused)
			reset();
		pause_pending = 0;
	}
}

static void
wait_ready(void)
{
	int n;
	struct pollfd pfds[16];

	if (paused) {
		pthread_mutex_unlock(&mutex);
		usleep(20000);
		pthread_mutex_lock(&mutex);
		return;
	}
	n = sio_pollfd(hdl, pfds, POLLOUT);
	if (n != 0) {
		pthread_mutex_unlock(&mutex);
		while (poll(pfds, n, -1) < 0) {
			if (errno != EINTR) {
				perror("poll");
				exit(1);
			}
		}
		pthread_mutex_lock(&mutex);
	}
	(void)sio_revents(hdl, pfds);
}

static void
op_about (void)
{
	static GtkWidget *about;

	if (about != NULL)
		return;

	about = xmms_show_message (
		"About sndio Output Plugin",
		"XMMS sndio Output Plugin " VERSION "\n\n"
		"Written by Thomas Pfaff <tpfaff@tp76.info>\n",
		"Ok", FALSE, NULL, NULL);

	gtk_signal_connect (GTK_OBJECT (about), "destroy",
		GTK_SIGNAL_FUNC (gtk_widget_destroyed), &about);
}

static void
op_init (void)
{
	ConfigFile *cfgfile;

	cfgfile = xmms_cfg_open_default_file();
	xmms_cfg_read_string(cfgfile, "sndio", "audiodev", &audiodev);
	xmms_cfg_free(cfgfile);

	if (!audiodev)
		audiodev = g_strdup(SIO_DEVANY);
}

static void
op_get_volume (int *left, int *right)
{
	pthread_mutex_lock (&mutex);
	*left = *right = volume;
	pthread_mutex_unlock (&mutex);
}

static void
op_set_volume (int left, int right)
{
	/* Ignore balance control, so use unattenuated channel. */
	pthread_mutex_lock (&mutex);
	volume = left > right ? left : right;
	volume_pending = 1;
	pthread_mutex_unlock (&mutex);
}

static int
op_open (AFormat fmt, int rate, int nch)
{
	struct sio_par askpar;

	pthread_mutex_lock (&mutex);
	hdl = sio_open (audiodev, SIO_PLAY, 1);
	if (hdl == NULL) {
		fprintf (stderr, "%s: failed to open audio device\n", __func__);
		goto error;
	}

	sio_initpar (&par);
	afmt = fmt;
	switch (fmt) {
	case FMT_U8:
		par.bits = 8;
		par.sig = 0;
		break;
	case FMT_S8:
		par.bits = 8;
		par.sig = 1;
		break;
	case FMT_U16_LE:
		par.bits = 16;
		par.sig = 0;
		par.le = 1;
		break;
	case FMT_U16_BE:
		par.bits = 16;
		par.sig = 0;
		par.le = 0;
		break;
	case FMT_U16_NE:
		par.bits = 16;
		par.sig = 0;
		par.le = SIO_LE_NATIVE;
		break;
	case FMT_S16_LE:
		par.bits = 16;
		par.sig = 1;
		par.le = 1;
		break;
	case FMT_S16_BE:
		par.bits = 16;
		par.sig = 1;
		par.le = 0;
	case FMT_S16_NE:
		par.bits = 16;
		par.sig = 1;
		par.le = SIO_LE_NATIVE;
		break;
	default:
		fprintf (stderr, "%s: unknown format requested\n", __func__);
		goto error;
	}
	par.pchan = nch;
	par.rate = rate;

	/* 250 ms buffer */
	par.appbufsz = par.rate / 4;

	askpar = par;
	if (!sio_setpar (hdl, &par) || !sio_getpar (hdl, &par)) {
		fprintf (stderr, "%s: failed to set parameters\n", __func__);
		goto error;
	}

	if ((par.bits == 16 && par.le != askpar.le) ||
	    par.bits != askpar.bits ||
	    par.sig != askpar.sig ||
	    par.pchan != askpar.pchan ||
            par.rate != askpar.rate) {
		fprintf (stderr, "%s: parameters not supported\n", __func__);
		xmms_show_message ("Unsupported format", "XMMS requested a "
			"format that is not supported by the audio device.\n\n"
			"Please try again with the sndiod(1) server running.",
			"OK", FALSE, NULL, NULL);
		goto error;
	}

	rdpos = 0;
	wrpos = 0;
	sio_onmove (hdl, onmove_cb, NULL);
	sio_onvol (hdl, onvol_cb, NULL);

	bytes_per_sec = par.bps * par.pchan * par.rate;
	pause_pending = flush_pending = volume_pending = 0;
	restarted = 1;
	paused = 0;
	if (!sio_start (hdl)) {
		fprintf (stderr, "%s: failed to start audio device\n",
			__func__);
		goto error;
	}
	pthread_mutex_unlock (&mutex);
	return TRUE;

error:
	pthread_mutex_unlock (&mutex);
	op_close ();
	return FALSE;
}

static void
op_write (void *ptr, int len)
{
	unsigned n;
	EffectPlugin *ep;

	/* This sucks but XMMS totally broke the effect plugin code when
	   they added support for multiple enabled effects.  Complain to
	   the non-existent XMMS team if a plugin does not work, however
	   this does not seem to affect any plugins in our ports tree. */
	ep = get_current_effect_plugin ();
	ep->mod_samples (&ptr, len, afmt, par.rate, par.pchan);

	pthread_mutex_lock(&mutex);
	for (;;) {
		pending_events();
		if (paused)
			break;
		restarted = 0;
		n = sio_write(hdl, ptr, len);
		if (n == 0 && sio_eof(hdl))
			break;
		wrpos += n;
		len -= n;
		ptr = (char *)ptr + n;
		if (len == 0)
			break;
		wait_ready();
	}
	pthread_mutex_unlock(&mutex);
}

static void
op_close (void)
{
	pthread_mutex_lock (&mutex);
	if (hdl != NULL) {
		sio_close (hdl);
		hdl = NULL;
	}
	pthread_mutex_unlock (&mutex);
}

static void
op_seek (int time_ms)
{
	int bufused;

	pthread_mutex_lock (&mutex);
	bufused = wrpos - rdpos;
	rdpos = (long long)time_ms * bytes_per_sec / 1000;
	wrpos = rdpos + bufused;
	pthread_mutex_unlock (&mutex);
}

static void
op_pause (short flag)
{
	pthread_mutex_lock(&mutex);
	paused = flag;
	pause_pending = 1;
	pthread_mutex_unlock(&mutex);
}

static int
op_buffer_free (void)
{
#define MAGIC 1000000 /* See Output/{OSS,sun,esd}/audio.c */
	int ret;

	pthread_mutex_lock(&mutex);
	pending_events();
	ret = paused ? 0 : MAGIC; 
	pthread_mutex_unlock(&mutex);
	return ret;
}

static int
op_playing (void)
{
	/* sndio drains in the background, do as we're done */
	return FALSE;
}

static int
op_get_output_time (void)
{
	int time_ms;

	pthread_mutex_lock (&mutex);
	time_ms = hdl ? rdpos * 1000 / bytes_per_sec : 0;
	pthread_mutex_unlock (&mutex);
	return time_ms;
}

static int
op_get_written_time (void)
{
	int time_ms;

	pthread_mutex_lock (&mutex);
	time_ms = hdl ? wrpos * 1000 / bytes_per_sec : 0;
	pthread_mutex_unlock (&mutex);
	return time_ms;
}

static void
op_configure(void)
{
	GtkWidget *dev_vbox;
	GtkWidget *adevice_frame, *adevice_vbox;
	GtkWidget *bbox, *ok, *cancel;

	if (configure_win) {
		gdk_window_raise(configure_win->window);
		return;
	}
	configure_win = gtk_window_new(GTK_WINDOW_DIALOG);
	gtk_signal_connect(GTK_OBJECT(configure_win), "destroy",
	    GTK_SIGNAL_FUNC(configure_win_destroy), NULL);

	gtk_window_set_title(GTK_WINDOW(configure_win), _("sndio device"));
	gtk_window_set_policy(GTK_WINDOW(configure_win), FALSE, FALSE, FALSE);
	gtk_window_set_position(GTK_WINDOW(configure_win), GTK_WIN_POS_MOUSE);
	gtk_container_border_width(GTK_CONTAINER(configure_win), 10);

	dev_vbox = gtk_vbox_new(FALSE, 5);
	gtk_container_add(GTK_CONTAINER(configure_win), dev_vbox);
	gtk_container_set_border_width(GTK_CONTAINER(dev_vbox), 5);

	adevice_frame = gtk_frame_new(_("Audio device:"));
	gtk_box_pack_start(GTK_BOX(dev_vbox), adevice_frame, FALSE, FALSE, 0);

	adevice_vbox = gtk_vbox_new(FALSE, 5);
	gtk_container_set_border_width(GTK_CONTAINER(adevice_vbox), 5);
	gtk_container_add(GTK_CONTAINER(adevice_frame), adevice_vbox);

	adevice_entry = gtk_entry_new();
	gtk_entry_set_text(GTK_ENTRY(adevice_entry), audiodev);
	gtk_box_pack_start_defaults(GTK_BOX(adevice_vbox), adevice_entry);

	bbox = gtk_hbutton_box_new();
	gtk_button_box_set_layout(GTK_BUTTON_BOX(bbox), GTK_BUTTONBOX_END);
	gtk_button_box_set_spacing(GTK_BUTTON_BOX(bbox), 5);
	gtk_box_pack_start(GTK_BOX(dev_vbox), bbox, FALSE, FALSE, 0);

	ok = gtk_button_new_with_label(_("OK"));
	gtk_signal_connect(GTK_OBJECT(ok), "clicked",
	    GTK_SIGNAL_FUNC(configure_win_ok_cb), NULL);

	GTK_WIDGET_SET_FLAGS(ok, GTK_CAN_DEFAULT);
	gtk_box_pack_start(GTK_BOX(bbox), ok, TRUE, TRUE, 0);
	gtk_widget_grab_default(ok);

	cancel = gtk_button_new_with_label(_("Cancel"));
	gtk_signal_connect_object(GTK_OBJECT(cancel), "clicked",
	    GTK_SIGNAL_FUNC(configure_win_cancel_cb),
	    GTK_OBJECT(configure_win));

	GTK_WIDGET_SET_FLAGS(cancel, GTK_CAN_DEFAULT);
	gtk_box_pack_start(GTK_BOX(bbox), cancel, TRUE, TRUE, 0);

	gtk_widget_show_all(configure_win);
}

static void
configure_win_ok_cb(GtkWidget *w, gpointer data)
{
	ConfigFile *cfgfile;

	strlcpy(audiodev, gtk_entry_get_text(GTK_ENTRY(adevice_entry)),
	    PATH_MAX);

	cfgfile = xmms_cfg_open_default_file();
	xmms_cfg_write_string(cfgfile, "sndio", "audiodev", audiodev);
	xmms_cfg_write_default_file(cfgfile);
	xmms_cfg_free(cfgfile);

	gtk_widget_destroy(configure_win);
}

static void
configure_win_cancel_cb(GtkWidget *w, gpointer data)
{
	gtk_widget_destroy(configure_win);
}

static void
configure_win_destroy(void)
{
	configure_win = NULL;
}
