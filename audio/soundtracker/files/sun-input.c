/*
 * The Real SoundTracker - Sun (input) driver.
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
#include "driver-in.h"
#include "mixer.h"
#include "errors.h"
#include "gui-subs.h"

typedef struct sun_driver {
    GtkWidget *configwidget;
    GtkWidget *prefs_devaudio_w;

    int playrate;
    int stereo;
    int bits;
    int bufsize;
    int numbufs;
    int mf;

    pthread_mutex_t configmutex;

    int soundfd;
    void *sndbuf;
    int polltag;

    audio_info_t info;
    gchar p_devaudio[128];
    int p_resolution;
    int p_channels;
    int p_mixfreq;
    int p_bufsize;
} sun_driver;

static void
sun_poll_ready_sampling (gpointer data,
			 gint source,
			 GdkInputCondition condition)
{
    sun_driver * const d = data;

    printf("sampling...\n");

    read(d->soundfd, d->sndbuf, d->bufsize);

    sample_editor_sampled(d->sndbuf, d->bufsize, d->playrate, d->mf);
}

static void
prefs_init_from_structure (sun_driver *d)
{
    gtk_entry_set_text(GTK_ENTRY(d->prefs_devaudio_w), d->p_devaudio);
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
    GtkWidget *thing, *mainbox, *box2;

    d->configwidget = mainbox = gtk_vbox_new(FALSE, 2);
   
    thing = gtk_label_new(
        _("These changes won't take effect until you restart sampling."));
    gtk_widget_show(thing);
    gtk_box_pack_start(GTK_BOX(mainbox), thing, FALSE, TRUE, 0);
    
    thing = gtk_hseparator_new();
    gtk_widget_show(thing);
    gtk_box_pack_start(GTK_BOX(mainbox), thing, FALSE, TRUE, 0);

    box2 = gtk_hbox_new(FALSE, 4);
    gtk_widget_show(box2);
    gtk_box_pack_start(GTK_BOX(mainbox), box2, FALSE, TRUE, 0);

    thing = gtk_label_new(_("Input device (e.g. '/dev/audio'):"));
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
    d->p_channels = 1;
    d->p_resolution = 16;
    d->p_bufsize = 9;
    d->soundfd = -1;
    d->sndbuf = NULL;
    d->polltag = 0;
    if (pthread_mutex_init(&d->configmutex, NULL) != 0) {
        return NULL;
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
	    d->info.record.encoding = enc.encoding;
	    d->info.record.precision = enc.precision;
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
    d->info.record.channels = nch;
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

    if(d->polltag != 0) {
	gdk_input_remove(d->polltag);
	d->polltag = 0;
    }

    if(d->soundfd >= 0) {
	close(d->soundfd);
	d->soundfd = -1;
    }
}

static gboolean
sun_open (void *dp)
{
    char buf[256];
    sun_driver * const d = dp;
    int mf, i, fullduplex;

    AUDIO_INITINFO(&d->info);

    d->soundfd = open(d->p_devaudio, O_RDONLY|O_NONBLOCK);
    if(d->soundfd < 0) {
	sprintf(buf, _("%s: %s"), d->p_devaudio, strerror(errno));
	goto out;
    }
   
    fullduplex = 1;
    if (ioctl(d->soundfd, AUDIO_SETFD, &fullduplex) != 0) {
    	fprintf(stderr, "%s: does not support full-duplex operation\n",
	    d->p_devaudio);
	fullduplex = 0;
    }
   
    d->info.mode = AUMODE_RECORD;
    if(ioctl(d->soundfd, AUDIO_SETINFO, &d->info) != 0) {
	sprintf(buf, _("%s: Cannot record (%s)"), d->p_devaudio,
	    strerror(errno));
	goto out;
    }
    
    d->playrate = d->p_mixfreq;
    d->info.record.sample_rate = d->playrate;
    if(ioctl(d->soundfd, AUDIO_SETINFO, &d->info) != 0) {
	sprintf(buf, _("%s: Cannot handle %dHz (%s)"), d->p_devaudio,
	    d->playrate, strerror(errno));
	goto out;
    }  

    d->bits = 0;
    mf = 0;
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

    i = 0x00040000 + d->p_bufsize + d->stereo + (d->bits / 8 - 1);
    d->info.blocksize = 1 << (i & 0xffff);
    d->info.record.buffer_size = d->info.blocksize;
    d->info.hiwat = ((unsigned)i >> 16) & 0x7fff;
    printf("input blocksize %d hiwat %d\n", d->info.blocksize, d->info.hiwat);
    d->info.hiwat = 1;
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
    d->bufsize = d->info.blocksize;
    d->numbufs = d->info.hiwat;
    d->sndbuf = calloc(1, d->bufsize);

    if(d->stereo == 1) {
	d->bufsize /= 2;
    }
    if(d->bits == 16) {
	d->bufsize /= 2;
    }
   
    printf("reading...\n");
    read(d->soundfd, d->sndbuf, d->bufsize);
    printf("done\n");
 
    d->polltag = gdk_input_add(d->soundfd, GDK_INPUT_READ,
        sun_poll_ready_sampling, d);

    return TRUE;

  out:
    error_error(buf);
    sun_release(dp);
    return FALSE;
}

static gboolean
sun_loadsettings (void *dp,
		  prefs_node *f)
{
    sun_driver * const d = dp;

    prefs_get_string(f, "sun-devaudio", d->p_devaudio);

    prefs_init_from_structure(d);

    return TRUE;
}

static gboolean
sun_savesettings (void *dp,
		  prefs_node *f)
{
    sun_driver * const d = dp;

    prefs_put_string(f, "sun-devaudio", d->p_devaudio);

    return TRUE;
}

st_in_driver driver_in_sun = {
    { "Sun Sampling",

      sun_new,
      sun_destroy,

      sun_open,
      sun_release,

      sun_getwidget,
      sun_loadsettings,
      sun_savesettings,
    }
};

#endif /* DRIVER_SUN */
