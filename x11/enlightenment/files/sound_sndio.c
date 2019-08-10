/*
 * Copyright (c) 2012 Jonathan Armani <armani@openbsd.org>
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

#include "E.h"
#if defined(HAVE_SOUND) && defined(HAVE_SOUND_SNDIO)
#include "sound.h"
#include <sndio.h>

#ifdef USE_MODULES
#define Estrdup strdup
#endif

struct _sample {
   SoundSampleData     ssd;
};

static struct sio_hdl * hdl;

static Sample      *
_sound_sndio_Load(const char *file)
{
   Sample             *s;
   int                 err;

   if (hdl == NULL)
      return NULL;

   s = ECALLOC(Sample, 1);
   if (!s)
      return NULL;

   err = SoundSampleGetData(file, &s->ssd);
   if (err)
     {
	Efree(s);
	return NULL;
     }

   return s;
}

static void
_sound_sndio_Destroy(Sample * s)
{
   if (!s)
      return;

   EFREE_NULL(s->ssd.data);
   Efree(s);
}

static void
_sound_sndio_Play(Sample * s)
{
   struct sio_par params;
   if (hdl == NULL || !s)
      return;

   sio_initpar(&params);
   params.bits = s->ssd.bit_per_sample;
   params.pchan = s->ssd.channels;
   params.rate = s->ssd.rate;

   if (!sio_setpar(hdl, &params))
      return;
   if (!sio_getpar(hdl, &params))
      return;
   if (params.bits != s->ssd.bit_per_sample ||
         params.pchan != s->ssd.channels ||
	 params.rate != s->ssd.rate)
      return;

   if (!sio_start(hdl))
      return;

   sio_write(hdl, s->ssd.data, s->ssd.size);
   sio_stop(hdl);
}

static int
_sound_sndio_Init(void)
{
   if (hdl != NULL)
      return 0;

   hdl = sio_open(SIO_DEVANY, SIO_PLAY, 0);

   return (hdl == NULL);
}

static void
_sound_sndio_Exit(void)
{
   if (hdl == NULL)
      return;

   sio_close(hdl);
   hdl = NULL;
}

__EXPORT__ extern const SoundOps SoundOps_sndio;

const SoundOps      SoundOps_sndio = {
   _sound_sndio_Init, _sound_sndio_Exit, _sound_sndio_Load,
   _sound_sndio_Destroy,  _sound_sndio_Play,
};

#endif /* HAVE_SOUND && HAVE_SOUND_SNDIO */
