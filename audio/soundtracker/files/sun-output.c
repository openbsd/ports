
/*
 * The Real SoundTracker - Sun (output) driver.
 * 
 * Copyright (C) 2001  CubeSoft Communications, Inc.
 * <http://www.csoft.org>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
 */

#include <config.h>

#if DRIVER_SUN

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>

#include <fcntl.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/audioio.h>
#include <unistd.h>
#include <sys/time.h>

#include <glib.h>
#include <gtk/gtk.h>

#include "i18n.h"
#include "driver-out.h"
#include "mixer.h"
#include "errors.h"
#include "gui-subs.h"
#include "preferences.h"

typedef struct sun_driver {
    GtkWidget *configwidget;
    GtkWidget *prefs_devaudio_w;
    GtkWidget *prefs_resolution_w[2];
    GtkWidget *prefs_channels_w[2];
    GtkWidget *prefs_mixfreq_w[4];
    GtkWidget *bufsizespin_w, *bufsizelabel_w, *estimatelabel_w;

    int playrate;
    int stereo;
    int bits;
    int fragsize;
    int numfrags;
    int mf;
    gboolean realtimecaps;

    pthread_mutex_t configmutex;

    int soundfd;
    void *sndbuf;
    gpointer polltag;
    int firstpoll;

    gchar p_devaudio[128];
    int p_resolution;
    int p_channels;
    int p_mixfreq;
    int p_fragsize;

    double outtime;
    double playtime;

    audio_info_t info;
} sun_driver;

static const int mixfreqs[] = { 8000, 16000, 22050, 44100, -1 };

static void
sun_poll_ready_playing (gpointer data,
			gint source,
			GdkInputCondition condition)
{
    sun_driver * const d = data;
    static int size;
    static struct timeval tv;

    if(!d->firstpoll) {
	size = (d->stereo + 1) * (d->bits / 8) * d->fragsize;
	write(d->soundfd, d->sndbuf, size);

	if(!d->realtimecaps) {
	    gettimeofday(&tv, NULL);
	    d->outtime = tv.tv_sec + tv.tv_usec / 1e6;
	    d->playtime += (double) d->fragsize / d->playrate;
	}
    }

    d->firstpoll = FALSE;

    audio_mix(d->sndbuf, d->fragsize, d->playrate, d->mf);
}

static void
prefs_init_from_structure (sun_driver *d)
{
    int i;

    gtk_toggle_button_set_state(
        GTK_TOGGLE_BUTTON(d->prefs_resolution_w[d->p_resolution / 8 - 1]),
	TRUE);
    gtk_toggle_button_set_state(
        GTK_TOGGLE_BUTTON(d->prefs_channels_w[d->p_channels - 1]),
	TRUE);

    for(i = 0; mixfreqs[i] != -1; i++) {
	if(d->p_mixfreq == mixfreqs[i])
	    break;
    }
    if(mixfreqs[i] == -1) {
	i = 3;
    }
    gtk_toggle_button_set_state(GTK_TOGGLE_BUTTON(d->prefs_mixfreq_w[i]), TRUE);
    gtk_spin_button_set_value(GTK_SPIN_BUTTON(d->bufsizespin_w), d->p_fragsize);

    gtk_entry_set_text(GTK_ENTRY(d->prefs_devaudio_w), d->p_devaudio);
}

static void
prefs_update_estimate (sun_driver *d)
{
    char buf[64];
    
    sprintf(buf, _("Estimated audio delay: %f milliseconds"),
        (double)(1000 * (1 << d->p_fragsize)) / d->p_mixfreq);
    gtk_label_set_text(GTK_LABEL(d->estimatelabel_w), buf);
}

static void
prefs_resolution_changed (void *a,
			  sun_driver *d)
{
    d->p_resolution = (find_current_toggle(d->prefs_resolution_w, 2) + 1) * 8;
}

static void
prefs_channels_changed (void *a,
			sun_driver *d)
{
    d->p_channels = find_current_toggle(d->prefs_channels_w, 2) + 1;
}

static void
prefs_mixfreq_changed (void *a,
		       sun_driver *d)
{
    d->p_mixfreq = mixfreqs[find_current_toggle(d->prefs_mixfreq_w, 4)];
    prefs_update_estimate(d);
}

static void
prefs_fragsize_changed (GtkSpinButton *w,
			sun_driver *d)
{
    char buf[30];

    d->p_fragsize = gtk_spin_button_get_value_as_int(w);

    sprintf(buf, _("(%d samples)"), 1 << d->p_fragsize);
    gtk_label_set_text(GTK_LABEL(d->bufsizelabel_w), buf);
    prefs_update_estimate(d);
}

static void
sun_devaudio_changed (void *a,
		    sun_driver *d)
{
    strncpy(d->p_devaudio, gtk_entry_get_text(GTK_ENTRY(d->prefs_devaudio_w)),
        127);
}

static void
sun_make_config_widgets (sun_driver *d)
{
    GtkWidget *thing, *mainbox, *box2, *box3;
    static const char *resolutionlabels[] = { "8 bits", "16 bits", NULL };
    static const char *channelslabels[] = { "Mono", "Stereo", NULL };
    static const char *mixfreqlabels[] = { "8000", "16000", "22050", "44100",
        NULL };

    d->configwidget = mainbox = gtk_vbox_new(FALSE, 2);

    thing = gtk_label_new(
        _("These changes won't take effect until you restart playing."));
    gtk_widget_show(thing);
    gtk_box_pack_start(GTK_BOX(mainbox), thing, FALSE, TRUE, 0);
    
    thing = gtk_hseparator_new();
    gtk_widget_show(thing);
    gtk_box_pack_start(GTK_BOX(mainbox), thing, FALSE, TRUE, 0);

    box2 = gtk_hbox_new(FALSE, 4);
    gtk_widget_show(box2);
    gtk_box_pack_start(GTK_BOX(mainbox), box2, FALSE, TRUE, 0);

    thing = gtk_label_new(_("Output device (e.g. '/dev/audio'):"));
    gtk_widget_show(thing);
    gtk_box_pack_start(GTK_BOX(box2), thing, FALSE, TRUE, 0);
    add_empty_hbox(box2);
    thing = gtk_entry_new_with_max_length(126);
    gtk_widget_show(thing);
    gtk_box_pack_start(GTK_BOX(box2), thing, FALSE, TRUE, 0);
    gtk_entry_set_text(GTK_ENTRY(thing), d->p_devaudio);
    gtk_signal_connect_after(GTK_OBJECT(thing), "changed",
			     GTK_SIGNAL_FUNC(sun_devaudio_changed), d);
    d->prefs_devaudio_w = thing;

    box2 = gtk_hbox_new(FALSE, 4);
    gtk_widget_show(box2);
    gtk_box_pack_start(GTK_BOX(mainbox), box2, FALSE, TRUE, 0);

    thing = gtk_label_new(_("Resolution:"));
    gtk_widget_show(thing);
    gtk_box_pack_start(GTK_BOX(box2), thing, FALSE, TRUE, 0);
    add_empty_hbox(box2);
    make_radio_group_full(resolutionlabels, box2, d->prefs_resolution_w,
        FALSE, TRUE, (void(*)())prefs_resolution_changed, d);

    box2 = gtk_hbox_new(FALSE, 4);
    gtk_widget_show(box2);
    gtk_box_pack_start(GTK_BOX(mainbox), box2, FALSE, TRUE, 0);

    thing = gtk_label_new(_("Channels:"));
    gtk_widget_show(thing);
    gtk_box_pack_start(GTK_BOX(box2), thing, FALSE, TRUE, 0);
    add_empty_hbox(box2);
    make_radio_group_full(channelslabels, box2, d->prefs_channels_w,
        FALSE, TRUE, (void(*)())prefs_channels_changed, d);

    box2 = gtk_hbox_new(FALSE, 4);
    gtk_widget_show(box2);
    gtk_box_pack_start(GTK_BOX(mainbox), box2, FALSE, TRUE, 0);

    thing = gtk_label_new(_("Frequency [Hz]:"));
    gtk_widget_show(thing);
    gtk_box_pack_start(GTK_BOX(box2), thing, FALSE, TRUE, 0);
    add_empty_hbox(box2);
    make_radio_group_full(mixfreqlabels, box2, d->prefs_mixfreq_w,
        FALSE, TRUE, (void(*)())prefs_mixfreq_changed, d);

    box2 = gtk_hbox_new(FALSE, 4);
    gtk_widget_show(box2);
    gtk_box_pack_start(GTK_BOX(mainbox), box2, FALSE, TRUE, 0);

    thing = gtk_label_new(_("Buffer Size:"));
    gtk_widget_show(thing);
    gtk_box_pack_start(GTK_BOX(box2), thing, FALSE, TRUE, 0);
    add_empty_hbox(box2);

    box3 = gtk_vbox_new(FALSE, 2);
    gtk_box_pack_start(GTK_BOX(box2), box3, FALSE, TRUE, 0);
    gtk_widget_show(box3);

    d->bufsizespin_w = thing = gtk_spin_button_new(GTK_ADJUSTMENT(
        gtk_adjustment_new(5.0, 5.0, 15.0, 1.0, 1.0, 0.0)), 0, 0);
    gtk_box_pack_start(GTK_BOX(box3), thing, FALSE, TRUE, 0);
    gtk_widget_show(thing);
    gtk_signal_connect (GTK_OBJECT(thing), "changed",
			GTK_SIGNAL_FUNC(prefs_fragsize_changed), d);

    d->bufsizelabel_w = thing = gtk_label_new("");
    gtk_box_pack_start(GTK_BOX(box3), thing, FALSE, TRUE, 0);
    gtk_widget_show(thing);

    box2 = gtk_hbox_new(FALSE, 4);
    gtk_widget_show(box2);
    gtk_box_pack_start(GTK_BOX(mainbox), box2, FALSE, TRUE, 0);

    add_empty_hbox(box2);
    d->estimatelabel_w = thing = gtk_label_new("");
    gtk_box_pack_start(GTK_BOX(box2), thing, FALSE, TRUE, 0);
    gtk_widget_show(thing);
    add_empty_hbox(box2);

    prefs_init_from_structure(d);
}

static GtkWidget *
sun_getwidget (void *dp)
{
    sun_driver * const d = dp;

    return d->configwidget;
}

static void *
sun_new (void)
{
    sun_driver *d = g_new(sun_driver, 1);

    strcpy(d->p_devaudio, "/dev/audio");
    d->p_mixfreq = 44100;
    d->p_channels = 2;
    d->p_resolution = 16;
    d->p_fragsize = 11; // 2048;
    d->soundfd = -1;
    d->sndbuf = NULL;
    d->polltag = NULL;
    if (pthread_mutex_init(&d->configmutex, NULL) != 0) {
        return (NULL);
    }

    sun_make_config_widgets(d);

    return d;
}

static void
sun_destroy (void *dp)
{
    sun_driver * const d = dp;

    gtk_widget_destroy(d->configwidget);
    pthread_mutex_destroy(&d->configmutex);

    g_free(dp);
}

static gboolean
sun_try_format (sun_driver *d, int fmt, int precision)
{
    audio_encoding_t enc;
 
    for(enc.index = 0; ioctl(d->soundfd, AUDIO_GETENC, &enc) == 0;
        enc.index++) {
        if (enc.encoding == fmt && enc.precision == precision) {
	    d->info.play.encoding = enc.encoding;
	    d->info.play.precision = enc.precision;
	    if (ioctl(d->soundfd, AUDIO_SETINFO, &d->info) == 0) {
	        return TRUE;
	    } else {
	        return FALSE;
	    }
	}
    }
    
    return FALSE;
}

static gboolean
sun_try_channels (sun_driver *d, int nch)
{
    d->info.play.channels = nch;
    if(ioctl(d->soundfd, AUDIO_SETINFO, &d->info) != 0) {
        return FALSE;
    }
  
    return TRUE;
}

static void
sun_release (void *dp)
{
    sun_driver * const d = dp;

    free(d->sndbuf);
    d->sndbuf = NULL;

    audio_poll_remove(d->polltag);
    d->polltag = NULL;

    if(d->soundfd >= 0) {
    	ioctl(d->soundfd, AUDIO_FLUSH, NULL);
	close(d->soundfd);
	d->soundfd = -1;
    }
}

static gboolean
sun_open (void *dp)
{
    char buf[256];
    sun_driver * const d = dp;
    int mf = 0, i;

    AUDIO_INITINFO(&d->info);

    d->soundfd = open(d->p_devaudio, O_WRONLY);
    if(d->soundfd < 0) {
	sprintf(buf, _("%s: %s"), d->p_devaudio, strerror(errno));
	goto out;
    }
    
    d->info.mode = AUMODE_PLAY;
    if(ioctl(d->soundfd, AUDIO_SETINFO, &d->info) != 0) {
	sprintf(buf, _("%s: Cannot play (%s)"), d->p_devaudio, strerror(errno));
	goto out;
    }
    
    d->playrate = d->p_mixfreq;
    d->info.play.sample_rate = d->playrate;
    if(ioctl(d->soundfd, AUDIO_SETINFO, &d->info) != 0) {
	sprintf(buf, _("%s: Cannot handle %dHz (%s)"), d->p_devaudio,
	    d->playrate, strerror(errno));
	goto out;
    }  
    
    d->bits = 0;
    if(d->p_resolution == 16) {
	if(sun_try_format(d, AUDIO_ENCODING_SLINEAR_LE, 16)) {
	    d->bits = 16;
	    mf = ST_MIXER_FORMAT_S16_LE;
	} else if(sun_try_format(d, AUDIO_ENCODING_SLINEAR_BE, 16)) {
	    d->bits = 16;
	    mf = ST_MIXER_FORMAT_S16_BE;
	} else if(sun_try_format(d, AUDIO_ENCODING_ULINEAR_LE, 16)) {
	    d->bits = 16;
	    mf = ST_MIXER_FORMAT_U16_LE;
	} else if(sun_try_format(d, AUDIO_ENCODING_ULINEAR_BE, 16)) {
	    d->bits = 16;
	    mf = ST_MIXER_FORMAT_U16_BE;
	}
    }
    if(d->bits != 16) {
	if(sun_try_format(d, AUDIO_ENCODING_SLINEAR, 8)) {
	    d->bits = 8;
	    mf = ST_MIXER_FORMAT_S8;
	} else if(sun_try_format(d, AUDIO_ENCODING_PCM8, 8)) {
	    d->bits = 8;
	    mf = ST_MIXER_FORMAT_U8;
	} else {
	    sprintf(buf, _("%s: Required sound encoding not supported.\n"),
	        d->p_devaudio);
	    goto out;
	}
    }
    
    if(d->p_channels == 2 && sun_try_channels(d, 2)) {
	d->stereo = 1;
	mf |= ST_MIXER_FORMAT_STEREO;
    } else if(sun_try_channels(d, 1)) {
	d->stereo = 0;
    }


    d->mf = mf;

    i = 0x00020000 + d->p_fragsize + d->stereo + (d->bits / 8 - 1);
    d->info.blocksize = 1 << (i & 0xffff);
    d->info.hiwat = ((unsigned)i >> 16) & 0x7fff;
    if (d->info.hiwat == 0) {
    	d->info.hiwat = 65536;
    }
    if (ioctl(d->soundfd, AUDIO_SETINFO, &d->info) != 0) {
	sprintf(buf, _("%s: Cannot set block size (%s)"), d->p_devaudio,
	    strerror(errno));
        goto out;
    }
   
    if (ioctl(d->soundfd, AUDIO_GETINFO, &d->info) != 0) {
	sprintf(buf, _("%s: %s"), d->p_devaudio, strerror(errno));
	goto out;
    }
    d->fragsize = d->info.blocksize;
    d->numfrags = d->info.hiwat;

#if 0
    if (ioctl(d->soundfd, AUDIO_GETPROPS, &i) == 0) {
        /* XXX use only if we are recording. */
        d->realtimecaps = i & AUDIO_PROP_FULLDUPLEX;
    }
#endif

    d->sndbuf = calloc(1, d->fragsize);

    if(d->stereo == 1) {
	d->fragsize /= 2;
    }
    if(d->bits == 16) {
	d->fragsize /= 2;
    }

    d->polltag = audio_poll_add(d->soundfd, GDK_INPUT_WRITE,
        sun_poll_ready_playing, d);
    d->firstpoll = TRUE;
    d->playtime = 0;

    return TRUE;

  out:
    error_error(buf);
    sun_release(dp);
    return FALSE;
}

static double
sun_get_play_time (void *dp)
{
    sun_driver * const d = dp;

    if(d->realtimecaps) {
        static audio_offset_t ooffs;

	ioctl(d->soundfd, AUDIO_GETOOFFS, &ooffs);

	return (double)ooffs.samples /
	    (d->stereo + 1) / (d->bits / 8) / d->playrate;
    } else {
	struct timeval tv;
	double curtime;

	gettimeofday(&tv, NULL);
	curtime = tv.tv_sec + tv.tv_usec / 1e6;

	return d->playtime + curtime - d->outtime -
	    d->numfrags * ((double) d->fragsize / d->playrate);
    }
}

static gboolean
sun_loadsettings (void *dp,
		  prefs_node *f)
{
    sun_driver * const d = dp;

    prefs_get_string(f, "sun-devaudio", d->p_devaudio);
    prefs_get_int(f, "sun-resolution", &d->p_resolution);
    prefs_get_int(f, "sun-channels", &d->p_channels);
    prefs_get_int(f, "sun-mixfreq", &d->p_mixfreq);
    prefs_get_int(f, "sun-fragsize", &d->p_fragsize);

    prefs_init_from_structure(d);

    return TRUE;
}

static gboolean
sun_savesettings (void *dp,
		  prefs_node *f)
{
    sun_driver * const d = dp;

    prefs_put_string(f, "sun-devaudio", d->p_devaudio);
    prefs_put_int(f, "sun-resolution", d->p_resolution);
    prefs_put_int(f, "sun-channels", d->p_channels);
    prefs_put_int(f, "sun-mixfreq", d->p_mixfreq);
    prefs_put_int(f, "sun-fragsize", d->p_fragsize);

    return TRUE;
}

st_out_driver driver_out_sun = {
    { "Sun Output",

      sun_new,
      sun_destroy,

      sun_open,
      sun_release,

      sun_getwidget,
      sun_loadsettings,
      sun_savesettings,
    },

    sun_get_play_time,
};

#endif /* DRIVER_SUN */
