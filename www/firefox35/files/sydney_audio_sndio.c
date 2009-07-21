/*	$OpenBSD: sydney_audio_sndio.c,v 1.1 2009/07/21 12:12:37 martynas Exp $	*/

/*
 * Copyright (c) 2009 Martynas Venckus <martynas@openbsd.org>
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

/* ***** BEGIN LICENSE BLOCK *****
 * Version: MPL 1.1/GPL 2.0/LGPL 2.1
 *
 * The contents of this file are subject to the Mozilla Public License Version
 * 1.1 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 * http://www.mozilla.org/MPL/
 *
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
 * for the specific language governing rights and limitations under the
 * License.
 *
 * The Initial Developer of the Original Code is
 * Copyright (C) 2008 Sun Microsystems, Inc.,
 *                Brian Lu <brian.lu@sun.com>
 *
 * Contributor(s):
 *
 * Alternatively, the contents of this file may be used under the terms of
 * either the GNU General Public License Version 2 or later (the "GPL"), or
 * the GNU Lesser General Public License Version 2.1 or later (the "LGPL"),
 * in which case the provisions of the GPL or the LGPL are applicable instead
 * of those above. If you wish to allow use of your version of this file only
 * under the terms of either the GPL or the LGPL, and not to allow others to
 * use your version of this file under the terms of the MPL, indicate your
 * decision by deleting the provisions above and replace them with the notice
 * and other provisions required by the GPL or the LGPL. If you do not delete
 * the provisions above, a recipient may use your version of this file under
 * the terms of any one of the MPL, the GPL or the LGPL.
 *
 * ***** END LICENSE BLOCK ***** *
 */

#include <sys/types.h>

#include <pthread.h>
#include <sndio.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "sydney_audio.h"

typedef struct sa_buf sa_buf;
struct sa_buf {
	unsigned int size;	/* size of sound data */
	sa_buf *next;		/* next buffer */
	unsigned char data[];	/* sound data */
};

struct sa_stream {
	struct sio_hdl *sndio_hdl;
	pthread_mutex_t mutex;
	pthread_t thread_id;
	int playing;
	int64_t bytes_played;

	/* used settings */
	unsigned int rate;
	unsigned int n_channels;
	unsigned int precision;

	/* buffer lists */
	sa_buf *bl_head;
	sa_buf *bl_tail;
};

/*
 * Use a default buffer size with enough room for one second of audio,
 * assuming stereo data at 44.1kHz with 32 bits per channel, and impose
 * a generous limit on the number of buffers.
 */
#define BUF_SIZE    (2 * 44100 * 4)

static void* audio_callback(void* s);
static sa_buf *new_buffer(int size);

/*
 * -----------------------------------------------------------------------------
 * Startup and shutdown functions
 * -----------------------------------------------------------------------------
 */

int
sa_stream_create_pcm(sa_stream_t **_s, const char *client_name,
    sa_mode_t mode, sa_pcm_format_t format, unsigned int rate,
    unsigned int n_channels)
{
	sa_stream_t *s;

	/*
	 * Make sure we return a NULL stream pointer on failure.
	 */
	if (_s == NULL)
		return SA_ERROR_INVALID;

	*_s = NULL;

	/*
	 * Check for supported modes.
	 */
	if (mode != SA_MODE_WRONLY)
		return SA_ERROR_NOT_SUPPORTED;

	/*
	 * Check for supported formats.
	 */
	if (format != SA_PCM_FORMAT_S16_LE)
		return SA_ERROR_NOT_SUPPORTED;

	/*
	 * Allocate the instance and required resources.
	 */
	if ((s = malloc(sizeof(sa_stream_t))) == NULL)
		return SA_ERROR_OOM;

	/*
	 * Create a new mutex.
	 */
	if (pthread_mutex_init(&s->mutex, NULL) != 0) {
		free(s);
		return SA_ERROR_SYSTEM;
	}

	s->sndio_hdl = NULL;
	s->rate = rate;
	s->n_channels = n_channels;
	s->precision = 16;

	s->playing = 0;
	s->bytes_played = 0;
	s->bl_tail = s->bl_head = NULL;

	*_s = s;

	return SA_SUCCESS;
}

int
sa_stream_open(sa_stream_t *s)
{
	struct sio_hdl *sndio_hdl;
	struct sio_par sndio_par;

	if (s == NULL)
		return SA_ERROR_NO_INIT;

	if (s->sndio_hdl != NULL)
		return SA_ERROR_INVALID;

	sndio_hdl = sio_open(NULL, SIO_PLAY, 0);
	if (sndio_hdl == 0) {
		fprintf(stderr, "sydney_audio_sndio: sio_open failed\n");
		return SA_ERROR_NO_DEVICE;
	}

	sio_initpar(&sndio_par);
	sndio_par.appbufsz = BUF_SIZE;
	sndio_par.bits = s->precision;
	sndio_par.le = SIO_LE_NATIVE;
	sndio_par.pchan = s->n_channels;
	sndio_par.rate = s->rate;
	sndio_par.sig = 1;

	if (!sio_setpar(sndio_hdl, &sndio_par) || !sio_getpar(sndio_hdl,
	    &sndio_par)) {
		fprintf(stderr, "sydney_audio_sndio: sio_par failed\n");
		sio_close(sndio_hdl);
		return SA_ERROR_NOT_SUPPORTED;
	}

	if (sndio_par.bits != s->precision ||
	    sndio_par.le != SIO_LE_NATIVE ||
	    sndio_par.pchan != s->n_channels ||
	    sndio_par.rate != s->rate || sndio_par.sig != 1) {
		fprintf(stderr, "sydney_audio_sndio: sndio "
		    "configuration failed\n");
		sio_close(sndio_hdl);
		return SA_ERROR_NOT_SUPPORTED;
	}

	if (!sio_start(sndio_hdl)) {
		fprintf(stderr, "sydney_audio_sndio: sio_start failed\n");
		sio_close(sndio_hdl);
		return SA_ERROR_NOT_SUPPORTED;
	}

	s->sndio_hdl = sndio_hdl;

	return SA_SUCCESS;
}

int
sa_stream_destroy(sa_stream_t *s)
{
	int result = SA_SUCCESS;

	if (s == NULL)
		return SA_SUCCESS;

	pthread_mutex_lock(&s->mutex);

	s->thread_id = 0;
	while (s->bl_head != NULL) {
		sa_buf *next = s->bl_head->next;
		free(s->bl_head);
		s->bl_head = next;
	}

	pthread_mutex_unlock(&s->mutex);

	if (pthread_mutex_destroy(&s->mutex) != 0)
		result = SA_ERROR_SYSTEM;

	return result;
}

/*
 * -----------------------------------------------------------------------------
 * Data read and write functions
 * -----------------------------------------------------------------------------
 */

int
sa_stream_write(sa_stream_t *s, const void *data, size_t nbytes)
{
	sa_buf *buf;

	if (s == NULL || s->sndio_hdl == NULL)
		return SA_ERROR_NO_INIT;

	if (nbytes == 0)
		return SA_SUCCESS;

	/*
	 * Append the new data to the end of our buffer list.
	 */
	buf = new_buffer(nbytes);
	if (buf == NULL)
		return SA_ERROR_OOM;

	memcpy(buf->data, data, nbytes);

	pthread_mutex_lock(&s->mutex);

	if (!s->bl_head)
		s->bl_head = buf;
	else
		s->bl_tail->next = buf;

	s->bl_tail = buf;

	pthread_mutex_unlock(&s->mutex);

	/*
	 * Once we have our first block of audio data, enable the
	 * audio callback function. This doesn't need to be protected
	 * by the mutex, because s->playing is not used in the audio
	 * callback thread, and it's probably better not to be
	 * inside the lock when we enable the audio callback.
	 */
	if (!s->playing) {
		s->playing = 1;
		if (pthread_create(&s->thread_id, NULL, audio_callback,
		    s) != 0)
			return SA_ERROR_SYSTEM;
	}

	return SA_SUCCESS;
}

static void *
audio_callback(void* data)
{
	sa_stream_t *s = (sa_stream_t*)data;
	sa_buf *buf;
	int nbytes_written, nbytes;

	while (1) {
		if (s->thread_id == 0) {
			/*
			 * Shut down the audio output device and
			 * release resources.
			 */
			if (s->sndio_hdl != NULL)
				sio_close(s->sndio_hdl);
			free(s);

			break;
		}

		while (1) {
			pthread_mutex_lock(&s->mutex);

			if (!s->bl_head) {
				pthread_mutex_unlock(&s->mutex);
				break;
			}

			buf = s->bl_head;
			s->bl_head = s->bl_head->next;

			pthread_mutex_unlock(&s->mutex);

			nbytes = buf->size;
			nbytes_written = sio_write(s->sndio_hdl,
			    buf->data, nbytes);
			if (nbytes != nbytes_written)
				fprintf(stderr, "sydney_audio_sndio: "
				    "sio_write short (%d vs. %d)\n",
				    nbytes_written, nbytes);
			free(buf);

			pthread_mutex_lock(&s->mutex);
			s->bytes_played += nbytes;
			pthread_mutex_unlock(&s->mutex);
		}
	}

	return NULL;
}

/*
 * -----------------------------------------------------------------------------
 * General query and support functions
 * -----------------------------------------------------------------------------
 */

int
sa_stream_get_write_size(sa_stream_t *s, size_t *size)
{
	sa_buf *b;

	if (s == NULL)
		return SA_ERROR_NO_INIT;

	/*
	 * There is no interface to get the avaiable writing buffer
	 * size in sun audio, we return max size here to force
	 * sa_stream_write() to be called when there is data to be
	 * played.
	 */
	*size = BUF_SIZE;

	return SA_SUCCESS;
}

/*
 * -----------------------------------------------------------------------------
 * General query and support functions
 * -----------------------------------------------------------------------------
 */

int
sa_stream_get_position(sa_stream_t *s, sa_position_t position, int64_t *pos)
{
	if (s == NULL)
		return SA_ERROR_NO_INIT;

	if (position != SA_POSITION_WRITE_SOFTWARE)
		return SA_ERROR_NOT_SUPPORTED;

	pthread_mutex_lock(&s->mutex);
	*pos = s->bytes_played;
	pthread_mutex_unlock(&s->mutex);

	return SA_SUCCESS;
}

static sa_buf *
new_buffer(int size)
{
	sa_buf *b;

	b = malloc(sizeof(sa_buf) + size);
	if (b != NULL) {
		b->size  = size;
		b->next  = NULL;
	}

	return b;
}

/*
 * -----------------------------------------------------------------------------
 * Unsupported functions
 * -----------------------------------------------------------------------------
 */

#define UNSUPPORTED(func)   func { return SA_ERROR_NOT_SUPPORTED; }

UNSUPPORTED(int sa_stream_set_volume_abs(sa_stream_t *s, float vol))
UNSUPPORTED(int sa_stream_get_volume_abs(sa_stream_t *s, float *vol))
UNSUPPORTED(int sa_stream_pause(sa_stream_t *s))
UNSUPPORTED(int sa_stream_resume(sa_stream_t *s))
UNSUPPORTED(int sa_stream_create_opaque(sa_stream_t **s,
    const char *client_name, sa_mode_t mode, const char *codec))
UNSUPPORTED(int sa_stream_set_write_lower_watermark(sa_stream_t *s,
    size_t size))
UNSUPPORTED(int sa_stream_set_read_lower_watermark(sa_stream_t *s, size_t size))
UNSUPPORTED(int sa_stream_set_write_upper_watermark(sa_stream_t *s,
    size_t size))
UNSUPPORTED(int sa_stream_set_read_upper_watermark(sa_stream_t *s, size_t size))
UNSUPPORTED(int sa_stream_set_channel_map(sa_stream_t *s,
    const sa_channel_t map[], unsigned int n))
UNSUPPORTED(int sa_stream_set_xrun_mode(sa_stream_t *s, sa_xrun_mode_t mode))
UNSUPPORTED(int sa_stream_set_non_interleaved(sa_stream_t *s, int enable))
UNSUPPORTED(int sa_stream_set_dynamic_rate(sa_stream_t *s, int enable))
UNSUPPORTED(int sa_stream_set_driver(sa_stream_t *s, const char *driver))
UNSUPPORTED(int sa_stream_start_thread(sa_stream_t *s,
    sa_event_callback_t callback))
UNSUPPORTED(int sa_stream_stop_thread(sa_stream_t *s))
UNSUPPORTED(int sa_stream_change_device(sa_stream_t *s,
    const char *device_name))
UNSUPPORTED(int sa_stream_change_read_volume(sa_stream_t *s,
    const int32_t vol[], unsigned int n))
UNSUPPORTED(int sa_stream_change_write_volume(sa_stream_t *s,
    const int32_t vol[], unsigned int n))
UNSUPPORTED(int sa_stream_change_rate(sa_stream_t *s, unsigned int rate))
UNSUPPORTED(int sa_stream_change_meta_data(sa_stream_t *s, const char *name,
    const void *data, size_t size))
UNSUPPORTED(int sa_stream_change_user_data(sa_stream_t *s, const void *value))
UNSUPPORTED(int sa_stream_set_adjust_rate(sa_stream_t *s,
    sa_adjust_t direction))
UNSUPPORTED(int sa_stream_set_adjust_nchannels(sa_stream_t *s,
    sa_adjust_t direction))
UNSUPPORTED(int sa_stream_set_adjust_pcm_format(sa_stream_t *s,
    sa_adjust_t direction))
UNSUPPORTED(int sa_stream_set_adjust_watermarks(sa_stream_t *s,
    sa_adjust_t direction))
UNSUPPORTED(int sa_stream_get_mode(sa_stream_t *s, sa_mode_t *access_mode))
UNSUPPORTED(int sa_stream_get_codec(sa_stream_t *s, char *codec, size_t *size))
UNSUPPORTED(int sa_stream_get_pcm_format(sa_stream_t *s,
    sa_pcm_format_t *format))
UNSUPPORTED(int sa_stream_get_rate(sa_stream_t *s, unsigned int *rate))
UNSUPPORTED(int sa_stream_get_nchannels(sa_stream_t *s, int *nchannels))
UNSUPPORTED(int sa_stream_get_user_data(sa_stream_t *s, void **value))
UNSUPPORTED(int sa_stream_get_write_lower_watermark(sa_stream_t *s,
    size_t *size))
UNSUPPORTED(int sa_stream_get_read_lower_watermark(sa_stream_t *s,
    size_t *size))
UNSUPPORTED(int sa_stream_get_write_upper_watermark(sa_stream_t *s,
    size_t *size))
UNSUPPORTED(int sa_stream_get_read_upper_watermark(sa_stream_t *s,
    size_t *size))
UNSUPPORTED(int sa_stream_get_channel_map(sa_stream_t *s, sa_channel_t map[],
    unsigned int *n))
UNSUPPORTED(int sa_stream_get_xrun_mode(sa_stream_t *s, sa_xrun_mode_t *mode))
UNSUPPORTED(int sa_stream_get_non_interleaved(sa_stream_t *s, int *enabled))
UNSUPPORTED(int sa_stream_get_dynamic_rate(sa_stream_t *s, int *enabled))
UNSUPPORTED(int sa_stream_get_driver(sa_stream_t *s, char *driver_name,
    size_t *size))
UNSUPPORTED(int sa_stream_get_device(sa_stream_t *s, char *device_name,
    size_t *size))
UNSUPPORTED(int sa_stream_get_read_volume(sa_stream_t *s, int32_t vol[],
    unsigned int *n))
UNSUPPORTED(int sa_stream_get_write_volume(sa_stream_t *s, int32_t vol[],
    unsigned int *n))
UNSUPPORTED(int sa_stream_get_meta_data(sa_stream_t *s, const char *name,
    void *data, size_t *size))
UNSUPPORTED(int sa_stream_get_adjust_rate(sa_stream_t *s,
    sa_adjust_t *direction))
UNSUPPORTED(int sa_stream_get_adjust_nchannels(sa_stream_t *s,
    sa_adjust_t *direction))
UNSUPPORTED(int sa_stream_get_adjust_pcm_format(sa_stream_t *s,
    sa_adjust_t *direction))
UNSUPPORTED(int sa_stream_get_adjust_watermarks(sa_stream_t *s,
    sa_adjust_t *direction))
UNSUPPORTED(int sa_stream_get_state(sa_stream_t *s, sa_state_t *state))
UNSUPPORTED(int sa_stream_get_event_error(sa_stream_t *s, sa_error_t *error))
UNSUPPORTED(int sa_stream_get_event_notify(sa_stream_t *s, sa_notify_t *notify))
UNSUPPORTED(int sa_stream_read(sa_stream_t *s, void *data, size_t nbytes))
UNSUPPORTED(int sa_stream_read_ni(sa_stream_t *s, unsigned int channel,
    void *data, size_t nbytes))
UNSUPPORTED(int sa_stream_write_ni(sa_stream_t *s, unsigned int channel,
    const void *data, size_t nbytes))
UNSUPPORTED(int sa_stream_pwrite(sa_stream_t *s, const void *data,
    size_t nbytes, int64_t offset, sa_seek_t whence))
UNSUPPORTED(int sa_stream_pwrite_ni(sa_stream_t *s, unsigned int channel,
    const void *data, size_t nbytes, int64_t offset, sa_seek_t whence))
UNSUPPORTED(int sa_stream_get_read_size(sa_stream_t *s, size_t *size))
UNSUPPORTED(int sa_stream_drain(sa_stream_t *s))

const char *sa_strerror(int code) { return NULL; }

