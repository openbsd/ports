/*
 * Copyright (c) 2008 Thomas Pfaff <tpfaff@tp76.info>
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


#include <gtk/gtk.h>

#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <sndio.h>

#include <xmms/plugin.h>
#include <xmms/i18n.h>
#include <libxmms/util.h>
#include <libxmms/configfile.h>

#define XMMS_MAXVOL 100

static void op_about (void);
static void op_init (void);
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

static void onmove_cb (void *, int);

static void configure_win_ok_cb(GtkWidget *, gpointer);
static void configure_win_cancel_cb(GtkWidget *, gpointer);
static void configure_win_destroy(void);

static struct sio_par par;
static struct sio_hdl *hdl;
static long long rdpos;
static long long wrpos;
static int paused;
static int volume = XMMS_MAXVOL;
static long bytes_per_sec;

static GtkWidget *configure_win;
static GtkWidget *adevice_entry;
static gchar *audiodev;

static OutputPlugin sndio_op = {
	NULL,
	NULL,
	"sndio Output Plugin",
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
op_about (void)
{
	static GtkWidget *about;

	if (about != NULL)
		return;

	about = xmms_show_message (
		"About sndio Output Plugin",
		"XMMS sndio Output Plugin\n\n"
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
		audiodev = g_strdup("");
}

static void
op_get_volume (int *left, int *right)
{
	*left = *right = volume;
}

static void
op_set_volume (int left, int right)
{
	/* Ignore balance control, so use unattenuated channel. */
	volume = left > right ? left : right;
	if (hdl != NULL)
		sio_setvol (hdl, volume * SIO_MAXVOL / XMMS_MAXVOL);
}

static int
op_open (AFormat fmt, int rate, int nch)
{
	struct sio_par askpar;

	if (strlen(audiodev) == 0)
		hdl = sio_open (NULL, SIO_PLAY, 0);
	else
		hdl = sio_open (audiodev, SIO_PLAY, 0);
	if (hdl == NULL) {
		fprintf (stderr, "%s: failed to open audio device\n", __func__);
		return 0;
	}

	sio_initpar (&par);
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
		op_close ();
		return 0;
	}
	par.pchan = nch;
	par.rate = rate;

	/* 250 ms buffer */
	par.appbufsz = par.rate / 4;

	askpar = par;
	if (!sio_setpar (hdl, &par) || !sio_getpar (hdl, &par)) {
		fprintf (stderr, "%s: failed to set parameters\n", __func__);
		op_close ();
		return 0;
	}

	if ((par.bits == 16 && par.le != askpar.le) ||
	    par.bits != askpar.bits ||
	    par.sig != askpar.sig ||
	    par.pchan != askpar.pchan ||
            par.rate != askpar.rate) {
		fprintf (stderr, "%s: parameters not supported\n", __func__);
		xmms_show_message ("Unsupported format", "XMMS requested a "
			"format that is not supported by the audio device.\n\n"
			"Please try again with the aucat(1) server running.",
			"OK", FALSE, NULL, NULL);
		op_close ();
		return 0;
	}

	wrpos = 0;
	rdpos = 0;
	sio_onmove (hdl, onmove_cb, NULL);

	op_set_volume (volume, volume);

	paused = 0;
	if (!sio_start (hdl)) {
		fprintf (stderr, "%s: failed to start audio device\n",
			__func__);
		op_close ();
		return 0;
	}

	bytes_per_sec = par.bps * par.pchan * par.rate;
	return 1;
}

static void
op_write (void *ptr, int len)
{
	if (!paused)
		wrpos += sio_write (hdl, ptr, len);
}

static void
op_close (void)
{
	if (hdl != NULL) {
		sio_close (hdl);
		hdl = NULL;
	}
}

static void
op_seek (int time_ms)
{
	int bufused = (rdpos < 0) ? wrpos : wrpos - rdpos;
	rdpos = time_ms / 1000 * bytes_per_sec;
	wrpos = rdpos + bufused;
}

static void
op_pause (short flag)
{
	paused = flag;
}

static int
op_buffer_free (void)
{
#define MAGIC 1000000 /* See Output/{OSS,sun,esd}/audio.c */
	return paused ? 0 : MAGIC; 
}

static int
op_playing (void)
{
	return paused ? TRUE : FALSE;
}

static int
op_get_output_time (void)
{
	return hdl ? rdpos * 1000 / bytes_per_sec : 0;
}

static int
op_get_written_time (void)
{
	return hdl ? wrpos * 1000 / bytes_per_sec : 0;
}

static void
onmove_cb (void *addr, int delta)
{
	rdpos += delta * (int)(par.bps * par.pchan);
}

static void op_configure(void)
{
	GtkWidget *dev_vbox;
	GtkWidget *adevice_frame, *adevice_text, *adevice_vbox;
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

	adevice_text = gtk_label_new(_("(empty means default)"));
	gtk_box_pack_start_defaults(GTK_BOX(adevice_vbox), adevice_text);

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
