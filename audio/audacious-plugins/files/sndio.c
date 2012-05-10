/*
 * Copyright (c) 2008, 2009 Thomas Pfaff <tpfaff@tp76.info>
 * Copyright (c) 2012 Alexandre Ratchov <alex@caoua.org>
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
#include <pthread.h>
#include <sndio.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <gtk/gtk.h>
#include <audacious/plugin.h>
#include <audacious/misc.h>
#include <audacious/i18n.h>
#include <audacious/plugin.h>
#include <libaudgui/libaudgui.h>
#include <libaudgui/libaudgui-gtk.h>

#include "config.h"

/*
 * minimum output buffer size in milliseconds
 */
#define BUFFER_SIZE_MIN	250

bool_t	sndio_init(void);
void	sndio_cleanup(void);
void	sndio_about(void);
int	sndio_take_message(const char *, const void *, int);
void	sndio_configure(void);
void	sndio_get_volume(int *, int *);
void	sndio_set_volume(int, int);
bool_t	sndio_open(int, int, int);
void	sndio_close(void);
int	sndio_buffer_free(void);
void    sndio_period_wait(void);
void	sndio_write(void *, int);
void	sndio_pause(bool_t);
void	sndio_flush(int);
int	sndio_output_time(void);
int	sndio_written_time(void);
void	sndio_drain(void);
void	sndio_set_written_time(int);

void	onmove_cb(void *, int);
void	onvol_cb(void *, unsigned);

void	configure_win_ok_cb(GtkWidget *, gpointer);

static struct sio_par par;
static struct sio_hdl *hdl;
static long long rdpos;
static long long wrpos;
static int paused, restarted, volume;
static int pause_pending, flush_pending, volume_pending;
static int bytes_per_sec;
static pthread_mutex_t mtx;

static GtkWidget *configure_win;
static GtkWidget *adevice_entry;
static gchar *audiodev;

AUD_OUTPUT_PLUGIN
(
	.name = "sndio",
	.init = sndio_init,
	.cleanup = sndio_cleanup,
	.about = sndio_about,
	.configure = sndio_configure,
	.probe_priority = 2,
	.get_volume = sndio_get_volume,
	.set_volume = sndio_set_volume,
	.open_audio = sndio_open,
	.write_audio = sndio_write,
	.close_audio = sndio_close,
	.buffer_free = sndio_buffer_free,
	.period_wait = sndio_period_wait,
	.flush = sndio_flush,
	.pause = sndio_pause,
	.output_time = sndio_output_time,
	.written_time = sndio_written_time,
	.set_written_time = sndio_set_written_time,
	.drain = sndio_drain
)

static struct fmt_to_par {
	int fmt, bits, sig, le;
} fmt_to_par[] = {
	{FMT_S8,      8, 1, 0}, {FMT_U8,      8, 1, 0},
	{FMT_S16_LE, 16, 1, 1}, {FMT_S16_BE, 16, 1, 0},
	{FMT_U16_LE, 16, 0, 1},	{FMT_U16_BE, 16, 0, 0},
	{FMT_S24_LE, 24, 1, 1},	{FMT_S24_BE, 24, 1, 0},
	{FMT_U24_LE, 24, 0, 1},	{FMT_U24_BE, 24, 0, 0},
	{FMT_S32_LE, 32, 1, 1},	{FMT_S32_BE, 32, 1, 0},
	{FMT_U32_LE, 32, 0, 1},	{FMT_U32_BE, 32, 0, 0}
};

static const gchar * const sndio_defaults[] = {
	"volume", "100",
	"audiodev", "",
	NULL,
};

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
wait_ready(void)
{
	int n;
	struct pollfd pfds[16];

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
	if (paused) {
		pthread_mutex_unlock(&mtx);
		usleep(20000);
		pthread_mutex_lock(&mtx);
		return;
	}
	n = sio_pollfd(hdl, pfds, POLLOUT);
	if (n != 0) {
		pthread_mutex_unlock(&mtx);
		while (poll(pfds, n, -1) < 0) {
			if (errno != EINTR) {
				perror("poll");
				exit(1);
			}
		}
		pthread_mutex_lock(&mtx);
	}
	(void)sio_revents(hdl, pfds);
}

bool_t
sndio_init(void)
{
	pthread_mutex_init(&mtx, NULL);

	aud_config_set_defaults("sndio", sndio_defaults);
	volume = aud_get_int("sndio", "volume");
	audiodev = aud_get_string("sndio", "audiodev");

	return (1);
}

void
sndio_cleanup(void)
{
	aud_set_int("sndio", "volume", volume);
	aud_set_string("sndio", "audiodev", audiodev);
	pthread_mutex_destroy(&mtx);
}

void
sndio_about(void)
{
	static GtkWidget *about = NULL;

	audgui_simple_message(&about, GTK_MESSAGE_INFO,
	    _("About Sndio Output Plugin"),
	    _("Sndio Output Plugin\n\n"
	    "Written by Thomas Pfaff <tpfaff@tp76.info>\n"));
}

void
sndio_get_volume(int *l, int *r)
{
	pthread_mutex_lock(&mtx);
	*l = *r = volume;
	pthread_mutex_unlock(&mtx);
}

void
sndio_set_volume(int l, int r)
{
	/* Ignore balance control, so use unattenuated channel. */
	pthread_mutex_lock(&mtx);
	volume = l > r ? l : r;
	volume_pending = 1;
	pthread_mutex_unlock(&mtx);
}

bool_t
sndio_open(int fmt, int rate, int nch)
{
	int i;
	struct sio_par askpar;
	GtkWidget *dialog = NULL;
	unsigned buffer_size;

	hdl = sio_open(strlen(audiodev) > 0 ? audiodev : NULL, SIO_PLAY, 1);
	if (!hdl) {
		g_warning("failed to open audio device %s", audiodev);
		return (0);
	}
	sio_initpar(&askpar);
	for (i = 0; ; i++) {
		if (i == sizeof(fmt_to_par) / sizeof(struct fmt_to_par)) {
			g_warning("unknown format %d requested", fmt);
			sndio_close();
			return 0;
		}
		if (fmt_to_par[i].fmt == fmt)
			break;
	}
	askpar.bits = fmt_to_par[i].bits;
	askpar.bps = SIO_BPS(askpar.bits);
	askpar.sig = fmt_to_par[i].sig;
	if (askpar.bits > 8)
		askpar.le = fmt_to_par[i].le;
	askpar.pchan = nch;
	askpar.rate = rate;
	buffer_size = aud_get_int(NULL, "output_buffer_size");
	if (buffer_size < BUFFER_SIZE_MIN)
		buffer_size = BUFFER_SIZE_MIN;
	askpar.appbufsz = buffer_size * rate / 1000;
	if (!sio_setpar(hdl, &askpar) || !sio_getpar(hdl, &par)) {
		g_warning("failed to set parameters");
		sndio_close();
		return (0);
	}
	if ((par.bps > 1 && par.le != askpar.le) ||
	    (par.bits < par.bps * 8 && !par.msb) ||
	    par.bps != askpar.bps ||
	    par.sig != askpar.sig ||
	    par.pchan != askpar.pchan ||
            par.rate != askpar.rate) {
		g_warning("parameters not supported by the audio device");
		audgui_simple_message(&dialog, GTK_MESSAGE_INFO,
		    _("Unsupported format"),
		    _("A format not supported by the audio device "
		    "was requested.\n\n"
		    "Please try again with the sndiod(1) server running."));
		sndio_close();
		return (0);
	}
	rdpos = 0;
	wrpos = 0;
	sio_onmove(hdl, onmove_cb, NULL);
	sio_onvol(hdl, onvol_cb, NULL);
	sio_setvol(hdl, volume * SIO_MAXVOL / 100);
	if (!sio_start(hdl)) {
		g_warning("failed to start audio device");
		sndio_close();
		return (0);
	}
	pause_pending = flush_pending = volume_pending = 0;
	bytes_per_sec = par.bps * par.pchan * par.rate;
	restarted = 1;
	paused = 0;
	return (1);
}

void
sndio_write(void *ptr, int length)
{
	unsigned n;

	pthread_mutex_lock(&mtx);
	for (;;) {
		if (paused)
			break;
		restarted = 0;
		n = sio_write(hdl, ptr, length);
		if (n == 0 && sio_eof(hdl))
			return;
		wrpos += n;
		length -= n;
		ptr = (char *)ptr + n;
		if (length == 0)
			break;
		wait_ready();
	}
	pthread_mutex_unlock(&mtx);
}

void
sndio_close(void)
{
	if (!hdl)
		return;
	sio_close(hdl);
	hdl = NULL;
}

int
sndio_buffer_free(void)
{
	return paused ? 0 : par.round * par.pchan * par.bps;
}

void
sndio_period_wait(void)
{
	pthread_mutex_lock(&mtx);
	wait_ready();
	pthread_mutex_unlock(&mtx);
}

void
sndio_flush(int time)
{
	pthread_mutex_lock(&mtx);
	rdpos = wrpos = (long long)time * bytes_per_sec / 1000;
	flush_pending = 1;
	pthread_mutex_unlock(&mtx);
}

void
sndio_pause(bool_t flag)
{	
	pthread_mutex_lock(&mtx);
	paused = flag;
	pause_pending = 1;
	pthread_mutex_unlock(&mtx);
}

void
sndio_drain(void)
{
	/* sndio always drains */
}

int
sndio_output_time(void)
{
	int time;

	pthread_mutex_lock(&mtx);
	time = rdpos * 1000 / bytes_per_sec;
	pthread_mutex_unlock(&mtx);
	return time;
}

int
sndio_written_time(void)
{
	int time;

	pthread_mutex_lock(&mtx);
	time = wrpos * 1000 / bytes_per_sec;
	pthread_mutex_unlock(&mtx);
	return time;
}

void
sndio_set_written_time(int time)
{
	int used;

	pthread_mutex_lock(&mtx);
	wrpos = time * bytes_per_sec / 1000;
	used = wrpos - rdpos;
	rdpos = time * bytes_per_sec / 1000;
	wrpos = rdpos + used;
	pthread_mutex_unlock(&mtx);
}

void
onmove_cb(void *addr, int delta)
{
	rdpos += delta * (int)(par.bps * par.pchan);
}

void
onvol_cb(void *addr, unsigned ctl)
{
	/* Update volume only if it actually changed */
	if (ctl != volume * SIO_MAXVOL / 100)
		volume = ctl * 100 / SIO_MAXVOL;
}

void
configure_win_ok_cb(GtkWidget *w, gpointer data)
{
	strlcpy(audiodev, gtk_entry_get_text(GTK_ENTRY(adevice_entry)),
	    PATH_MAX);
	aud_set_string("sndio", "audiodev", audiodev);
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
	g_signal_connect(configure_win, "destroy",
	    G_CALLBACK(gtk_widget_destroyed), &configure_win);

	gtk_window_set_title(GTK_WINDOW(configure_win), _("sndio device"));
	gtk_window_set_resizable(GTK_WINDOW(configure_win), FALSE);
	gtk_window_set_position(GTK_WINDOW(configure_win), GTK_WIN_POS_MOUSE);
	gtk_container_set_border_width(GTK_CONTAINER(configure_win), 10);

	vbox = gtk_vbox_new(FALSE, 5);
	gtk_container_add(GTK_CONTAINER(configure_win), vbox);
	gtk_container_set_border_width(GTK_CONTAINER(vbox), 5);

	adevice_frame = gtk_frame_new(_("Audio device:"));
	gtk_box_pack_start(GTK_BOX(vbox), adevice_frame, FALSE, FALSE, 0);

	adevice_vbox = gtk_vbox_new(FALSE, 5);
	gtk_container_set_border_width(GTK_CONTAINER(adevice_vbox), 5);
	gtk_container_add(GTK_CONTAINER(adevice_frame), adevice_vbox);

	adevice_text = gtk_label_new(_("(empty means default)"));
	gtk_box_pack_start(GTK_BOX(adevice_vbox), adevice_text, TRUE, TRUE, 0);

	adevice_entry = gtk_entry_new();
	gtk_entry_set_text(GTK_ENTRY(adevice_entry), audiodev);
	gtk_box_pack_start(GTK_BOX(adevice_vbox), adevice_entry, TRUE, TRUE, 0);

	bbox = gtk_hbutton_box_new();
	gtk_button_box_set_layout(GTK_BUTTON_BOX(bbox), GTK_BUTTONBOX_END);
	gtk_box_set_spacing(GTK_BOX(bbox), 5);
	gtk_box_pack_start(GTK_BOX(vbox), bbox, FALSE, FALSE, 0);

	ok = gtk_button_new_with_label(_("OK"));
	g_signal_connect(ok, "clicked",
	    G_CALLBACK(configure_win_ok_cb), NULL);

	gtk_widget_set_can_default(ok, TRUE);
	gtk_box_pack_start(GTK_BOX(bbox), ok, TRUE, TRUE, 0);
	gtk_widget_grab_default(ok);

	cancel = gtk_button_new_with_label(_("Cancel"));
	g_signal_connect(cancel, "clicked",
	    G_CALLBACK(gtk_widget_destroy), &configure_win);

	gtk_widget_set_can_default(cancel, TRUE);
	gtk_box_pack_start(GTK_BOX(bbox), cancel, TRUE, TRUE, 0);

	gtk_widget_show_all(configure_win);
}
