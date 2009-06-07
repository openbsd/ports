/* Swfdec
 * Copyright (C) 2006 Benjamin Otte <otte@gnome.org>
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 * 
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, 
 * Boston, MA  02110-1301  USA
 */

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include <poll.h>
#include <errno.h>
#include <sndio.h>
#include <unistd.h>
#include "swfdec_playback.h"

/*** DEFINITIONS ***/

struct _SwfdecPlayback {
  SwfdecPlayer *	player;
  GList *		streams;	/* all Stream objects */
  GMainContext *	context;	/* context we work in */
};

typedef struct _Stream Stream;
struct _Stream {
  SwfdecPlayback *     	sound;		/* reference to sound object */
  SwfdecAudio *		audio;		/* the audio we play back */
  struct sio_hdl *	hdl;		/* the sndio handle we play back to */
  struct sio_par	par;		/* sndio audio parameters */
  guint			source;		/* timeout source ID */
  gsize			offset;		/* offset into sound */
  gboolean		(* write)	(Stream *);
  gboolean		started;	/* sndio "started state" */
  guint			f_written;	/* number of frames written to h/w */
  guint			f_played;	/* number of frames played by h/w */
};

static void
sndio_movecb (void *addr, int delta)
{
  Stream *stream = addr;

  stream->f_played += delta;
}


/*** STREAMS ***/

static void
swfdec_playback_stream_remove_handlers (Stream *stream)
{
  g_source_remove (stream->source);
}

static void swfdec_playback_stream_start (Stream *stream);

static int
swfdec_playback_stream_avail_update (Stream *stream)
{
  struct pollfd pfd;
  int n, revents, used, avail;

  n = sio_pollfd (stream->hdl, &pfd, POLLOUT);
  while (poll (&pfd, n, 0) < 0 && errno == EINTR)
    ;
  revents = sio_revents (stream->hdl, &pfd);

  used = (stream->f_played < 0) ?
    stream->f_written : stream->f_written - stream->f_played;
  avail = stream->par.bufsz - used;

  return avail;
}

static gboolean
try_write (Stream *stream)
{
#define STEP 1024
  int avail, step, rendered, written, bpf;
  gboolean finish = FALSE;

  avail = swfdec_playback_stream_avail_update (stream);

  bpf = stream->par.bps * stream->par.pchan;

  while (avail > 0 && !finish) {
    gint16 data[2 * STEP];

    step = MIN (avail, STEP);
    rendered = swfdec_audio_render (stream->audio, data, stream->offset, step);
    if (rendered < step) {
      finish = TRUE;
    }
    written = sio_write (stream->hdl, data, rendered * bpf) / bpf;
    avail -= written;
    stream->offset += rendered;
    stream->f_written += written;
  }

  if (finish) {
    swfdec_playback_stream_remove_handlers (stream);
  }
  return TRUE;
#undef STEP
}

static gboolean
handle_stream (gpointer data)
{
  Stream *stream = data;

  if (!stream->started) {
    swfdec_playback_stream_start (stream);
    return TRUE;
  } else {
    return try_write (stream);
  }
}

static void
swfdec_playback_stream_install_handlers (Stream *stream)
{
  guint timeo = (stream->par.bufsz * 125) / stream->par.rate;

  stream->source = g_timeout_add (timeo, (GSourceFunc) handle_stream, stream);
}

static void
swfdec_playback_stream_start (Stream *stream)
{
  if (!stream->started) {
    stream->offset = 0;

    if (!sio_start (stream->hdl)) {
      g_printerr("Could not start sndio\n");
      return;
    }
    stream->started = 1;

    swfdec_playback_stream_install_handlers (stream);
  } else {
    g_printerr("Called _stream_start but already started\n");
  }
}

static void
swfdec_playback_stream_changed (SwfdecAudio *audio, Stream *stream)
{
}

static void
swfdec_playback_stream_new_data (SwfdecAudio *audio, Stream *stream)
{
  swfdec_playback_stream_install_handlers (stream);
}

static void
swfdec_playback_stream_open (SwfdecPlayback *sound, SwfdecAudio *audio)
{
  Stream *stream;
  struct sio_hdl *hdl;
  struct sio_par par;

  hdl = sio_open (NULL, SIO_PLAY, 0);
  if (hdl == NULL) {
    g_printerr ("Could not open sndio\n");
    return;
  }

  sio_initpar (&par);

  par.bits = 16;
  par.sig = 1;
  par.pchan = 2;
  par.rate = 44100;
  par.appbufsz = 8192;

  if (!sio_setpar (hdl, &par)) {
    g_printerr ("\n\nCould not set sndio hardware parameters\n");
    goto fail;
  }
  if (!sio_getpar (hdl, &par)) {
    g_printerr ("\n\nCould not get sndio hardware parameters\n");
    goto fail;
  }

  stream = g_new0 (Stream, 1);
  stream->write = try_write;
  stream->sound = sound;
  stream->audio = g_object_ref (audio);
  stream->hdl = hdl;
  stream->par = par;
  sound->streams = g_list_prepend (sound->streams, stream);

  sio_onmove (hdl, sndio_movecb, stream);
  stream->f_written = stream->f_played = 0;

  g_signal_connect (stream->audio, "changed", 
      G_CALLBACK (swfdec_playback_stream_changed), stream);
  g_signal_connect (stream->audio, "new-data", 
      G_CALLBACK (swfdec_playback_stream_new_data), stream);
  swfdec_playback_stream_start (stream);
  return;

fail:
  sio_close (hdl);
}

static void
swfdec_playback_stream_close (Stream *stream)
{
  sio_close (stream->hdl);

  swfdec_playback_stream_remove_handlers (stream);
  stream->sound->streams = g_list_remove (stream->sound->streams, stream);
  g_signal_handlers_disconnect_by_func (stream->audio, 
      swfdec_playback_stream_changed, stream);
  g_signal_handlers_disconnect_by_func (stream->audio, 
      swfdec_playback_stream_new_data, stream);
  g_object_unref (stream->audio);
  g_free (stream);
}

/*** SOUND ***/

static void
advance_before (SwfdecPlayer *player, guint msecs, guint audio_samples, gpointer data)
{
  SwfdecPlayback *sound = data;
  GList *walk;

  for (walk = sound->streams; walk; walk = walk->next) {
    Stream *stream = walk->data;
    if (audio_samples >= stream->offset) {
      stream->offset = 0;
    } else {
      stream->offset -= audio_samples;
    }
  }
}

static void
audio_added (SwfdecPlayer *player, SwfdecAudio *audio, SwfdecPlayback *sound)
{
  swfdec_playback_stream_open (sound, audio);
}

static void
audio_removed (SwfdecPlayer *player, SwfdecAudio *audio, SwfdecPlayback *sound)
{
  GList *walk;

  for (walk = sound->streams; walk; walk = walk->next) {
    Stream *stream = walk->data;
    if (stream->audio == audio) {
      swfdec_playback_stream_close (stream);
      return;
    }
  }
}

SwfdecPlayback *
swfdec_playback_open (SwfdecPlayer *player, GMainContext *context)
{
  SwfdecPlayback *sound;
  const GList *walk;

  g_return_val_if_fail (SWFDEC_IS_PLAYER (player), NULL);
  g_return_val_if_fail (context != NULL, NULL);

  sound = g_new0 (SwfdecPlayback, 1);
  sound->player = player;
  g_signal_connect (player, "advance", G_CALLBACK (advance_before), sound);
  g_signal_connect (player, "audio-added", G_CALLBACK (audio_added), sound);
  g_signal_connect (player, "audio-removed", G_CALLBACK (audio_removed), sound);
  for (walk = swfdec_player_get_audio (player); walk; walk = walk->next) {
    swfdec_playback_stream_open (sound, walk->data);
  }
  g_main_context_ref (context);
  sound->context = context;

  return sound;
}

void
swfdec_playback_close (SwfdecPlayback *sound)
{
#define REMOVE_HANDLER_FULL(obj,func,data,count) G_STMT_START {\
  if (g_signal_handlers_disconnect_by_func ((obj), \
	G_CALLBACK (func), (data)) != (count)) { \
    g_assert_not_reached (); \
  } \
} G_STMT_END
#define REMOVE_HANDLER(obj,func,data) REMOVE_HANDLER_FULL (obj, func, data, 1)

  while (sound->streams)
    swfdec_playback_stream_close (sound->streams->data);
  REMOVE_HANDLER (sound->player, advance_before, sound);
  REMOVE_HANDLER (sound->player, audio_added, sound);
  REMOVE_HANDLER (sound->player, audio_removed, sound);
  g_main_context_unref (sound->context);
  g_free (sound);
}
