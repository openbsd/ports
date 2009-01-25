/*
 * Copyright (c) 2008,2009 Thomas Pfaff <tpfaff@tp76.info>
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
#include <stdlib.h>
#include <string.h>

#include <gtk/gtk.h>
#include <sndio.h>
#include <audacious/i18n.h>
#include <audacious/plugin.h>

#include "config.h"

void	sndio_init(void);
void	sndio_about(void);
void	sndio_configure(void);
void	sndio_get_volume(gint *, gint *);
void	sndio_set_volume(gint, gint);
gint	sndio_open(AFormat, gint, gint);
void	sndio_write(gpointer, gint);
void	sndio_close(void);
void	sndio_flush(gint);
void	sndio_pause(gshort);
gint	sndio_free(void);
gint	sndio_playing(void);
gint	sndio_output_time(void);
gint	sndio_written_time(void);

void	onmove_cb(void *, int);

void	configure_win_ok_cb(GtkWidget *, gpointer);

static struct sio_par par;
static struct sio_hdl *hdl;
static long long rdpos;
static long long wrpos;
static int paused;
static int volume;
static long bytes_per_sec;

static GtkWidget *configure_win;
static GtkWidget *adevice_entry;
static gchar *audiodev;

OutputPlugin sndio_op = {
	.description = "Sndio Output Plugin",
	.init = sndio_init,
	.cleanup = NULL,
	.about = sndio_about,
	.configure = sndio_configure,
	.get_volume = sndio_get_volume,
	.set_volume = sndio_set_volume,
	.open_audio = sndio_open,
	.write_audio = sndio_write,
	.close_audio = sndio_close,
	.flush = sndio_flush,
	.pause = sndio_pause,
	.buffer_free = sndio_free,
	.buffer_playing = sndio_playing,
	.output_time = sndio_output_time,
	.written_time = sndio_written_time
};

OutputPlugin *sndio_oplist[] = { &sndio_op, NULL };

SIMPLE_OUTPUT_PLUGIN(sndio, sndio_oplist);

void
sndio_about(void)
{
	static GtkWidget *about;

	if (about != NULL)
		return;

	about = audacious_info_dialog(
	    _("About Sndio Output Plugin"),
	    _("Sndio Output Plugin\n\n"
	    "Written by Thomas Pfaff <tpfaff@tp76.info>\n"),
	    _("Ok"), FALSE, NULL, NULL);

	gtk_signal_connect(GTK_OBJECT(about), "destroy",
		GTK_SIGNAL_FUNC(gtk_widget_destroyed), &about);
}

void
sndio_init(void)
{
	mcs_handle_t *cfgfile;

	cfgfile = aud_cfg_db_open();
	aud_cfg_db_get_int(cfgfile, "sndio", "volume", &volume);
	aud_cfg_db_get_string(cfgfile, "sndio", "audiodev", &audiodev);
	aud_cfg_db_close(cfgfile);

	if (!volume)
		volume = 100;
	if (!audiodev)
		audiodev = g_strdup("");
}

void
sndio_get_volume(gint *l, gint *r)
{
	*l = *r = volume;
}

void
sndio_set_volume(gint l, gint r)
{
	/* Ignore balance control, so use unattenuated channel. */
	volume = l > r ? l : r;
	if (hdl)
		sio_setvol(hdl, volume * SIO_MAXVOL / 100);
}

gint
sndio_open(AFormat fmt, gint rate, gint nch)
{
	struct sio_par askpar;

	hdl = sio_open(strlen(audiodev) > 0 ? audiodev : NULL, SIO_PLAY, 0);
	if (!hdl) {
		g_warning("failed to open audio device %s", audiodev);
		return (0);
	}

	sio_initpar(&par);
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
		g_warning("unknown format %d requested", fmt);
		sndio_close();
		return (0);
	}
	par.pchan = nch;
	par.rate = rate;

	/* 250 ms buffer */
	par.appbufsz = par.rate / 4;

	askpar = par;
	if (!sio_setpar(hdl, &par) || !sio_getpar(hdl, &par)) {
		g_warning("failed to set parameters");
		sndio_close();
		return (0);
	}

	if ((par.bits == 16 && par.le != askpar.le) ||
	    par.bits != askpar.bits ||
	    par.sig != askpar.sig ||
	    par.pchan != askpar.pchan ||
            par.rate != askpar.rate) {
		g_warning("parameters not supported");
		audacious_info_dialog(_("Unsupported format"),
		    _("A format not supported by the audio device "
		    "was requested.\n\n"
		    "Please try again with the aucat(1) server running."),
		    _("OK"), FALSE, NULL, NULL);
		sndio_close();
		return (0);
	}

	rdpos = 0;
	wrpos = 0;
	sio_onmove(hdl, onmove_cb, NULL);

	paused = 0;
	if (!sio_start(hdl)) {
		g_warning("failed to start audio device");
		sndio_close();
		return (0);
	}

	bytes_per_sec = par.bps * par.pchan * par.rate;

	sndio_set_volume(volume, volume);
	return (1);
}

void
sndio_write(gpointer ptr, gint length)
{
	if (!paused)
		wrpos += sio_write(hdl, ptr, length);
}

void
sndio_close(void)
{
	mcs_handle_t *cfgfile;

	if (!hdl)
		return;

	cfgfile = aud_cfg_db_open();
	aud_cfg_db_set_int(cfgfile, "sndio", "volume", volume);
	aud_cfg_db_close(cfgfile);

	sio_close(hdl);
	hdl = NULL;
}

void
sndio_flush(gint time)
{
	int bufused = (rdpos < 0) ? wrpos : wrpos - rdpos;
	rdpos = time / 1000 * bytes_per_sec;
	wrpos = rdpos + bufused;
}

void
sndio_pause(gshort flag)
{
	paused = flag;
}

gint
sndio_free(void)
{
	return (paused ? 0 : 1000000);
}

gint
sndio_playing(void)
{
	return (paused ? TRUE : FALSE);
}

gint
sndio_output_time(void)
{
	return (hdl ? rdpos * 1000 / bytes_per_sec : 0);
}

gint
sndio_written_time(void)
{
	return (hdl ? wrpos * 1000 / bytes_per_sec : 0);
}

void
onmove_cb(void *addr, int delta)
{
	rdpos += delta *(int)(par.bps * par.pchan);
}

void
configure_win_ok_cb(GtkWidget *w, gpointer data)
{
	mcs_handle_t *cfgfile;

	strlcpy(audiodev, gtk_entry_get_text(GTK_ENTRY(adevice_entry)),
	    PATH_MAX);

	cfgfile = aud_cfg_db_open();
	aud_cfg_db_set_string(cfgfile, "sndio", "audiodev", audiodev);
	aud_cfg_db_close(cfgfile);

	gtk_widget_destroy(configure_win);
}

void
sndio_configure(void)
{
	GtkWidget *vbox;
	GtkWidget *adevice_frame, *adevice_text, *adevice_vbox;
	GtkWidget *bbox, *ok, *cancel;

	if (configure_win) {
		gtk_window_present(GTK_WINDOW(configure_win));
		return;
	}

	configure_win = gtk_window_new(GTK_WINDOW_TOPLEVEL);
	gtk_signal_connect(GTK_OBJECT(configure_win), "destroy",
	    GTK_SIGNAL_FUNC(gtk_widget_destroyed), &configure_win);

	gtk_window_set_title(GTK_WINDOW(configure_win), _("sndio device"));
	gtk_window_set_policy(GTK_WINDOW(configure_win), FALSE, FALSE, FALSE);
	gtk_window_set_position(GTK_WINDOW(configure_win), GTK_WIN_POS_MOUSE);
	gtk_container_border_width(GTK_CONTAINER(configure_win), 10);

	vbox = gtk_vbox_new(FALSE, 5);
	gtk_container_add(GTK_CONTAINER(configure_win), vbox);
	gtk_container_set_border_width(GTK_CONTAINER(vbox), 5);

	adevice_frame = gtk_frame_new(_("Audio device:"));
	gtk_box_pack_start(GTK_BOX(vbox), adevice_frame, FALSE, FALSE, 0);

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
	gtk_box_pack_start(GTK_BOX(vbox), bbox, FALSE, FALSE, 0);

	ok = gtk_button_new_with_label(_("OK"));
	gtk_signal_connect(GTK_OBJECT(ok), "clicked",
	    GTK_SIGNAL_FUNC(configure_win_ok_cb), NULL);

	GTK_WIDGET_SET_FLAGS(ok, GTK_CAN_DEFAULT);
	gtk_box_pack_start(GTK_BOX(bbox), ok, TRUE, TRUE, 0);
	gtk_widget_grab_default(ok);

	cancel = gtk_button_new_with_label(_("Cancel"));
	gtk_signal_connect_object(GTK_OBJECT(cancel), "clicked",
	    GTK_SIGNAL_FUNC(gtk_widget_destroy),
	    GTK_OBJECT(configure_win));

	GTK_WIDGET_SET_FLAGS(cancel, GTK_CAN_DEFAULT);
	gtk_box_pack_start(GTK_BOX(bbox), cancel, TRUE, TRUE, 0);

	gtk_widget_show_all(configure_win);
}
