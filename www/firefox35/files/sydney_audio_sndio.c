/* $OpenBSD: sydney_audio_sndio.c,v 1.2 2009/07/23 19:04:42 martynas Exp $ */

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

struct sa_buffer {
	struct sa_buffer *next;
	unsigned int size;
	unsigned char data[];
};

struct sa_stream {
	struct sio_hdl *handle;
	pthread_mutex_t mutex;
	pthread_t thread;
	int64_t position;
	unsigned int buffer, channels, format, rate;
	struct sa_buffer *head, *tail;
};

static struct sa_buffer *allocate_buffer(size_t size);
static void audio_callback(void *data);

/*
 * STARTUP AND SHUTDOWN FUNCTIONS
 */

int
sa_stream_create_pcm(sa_stream_t **_s, const char *client_name,
    sa_mode_t mode, sa_pcm_format_t format, unsigned int rate,
    unsigned int channels)
{
	sa_stream_t *s;

	if (_s == NULL)
		return SA_ERROR_INVALID;

	*_s = NULL;

	if (mode != SA_MODE_WRONLY || (format != SA_PCM_FORMAT_S16_LE &&
	    format != SA_PCM_FORMAT_S16_BE))
		return SA_ERROR_NOT_SUPPORTED;

	s = malloc(sizeof(sa_stream_t));
	if (s == NULL)
		return SA_ERROR_OOM;

	if (pthread_mutex_init(&s->mutex, NULL) != 0) {
		free(s);
		return SA_ERROR_SYSTEM;
	}

	s->handle = NULL;
	s->channels = channels;
	s->format = 16;
	s->rate = rate;
	s->position = s->buffer = 0;
	s->tail = s->head = NULL;

	*_s = s;

	return SA_SUCCESS;
}

int
sa_stream_open(sa_stream_t *s)
{
	struct sio_hdl *handle;
	struct sio_par par;

	if (s == NULL)
		return SA_ERROR_NO_INIT;

	if (s->handle != NULL)
		return SA_ERROR_INVALID;

	handle = sio_open(NULL, SIO_PLAY, 0);
	if (handle == NULL)
		return SA_ERROR_NO_DEVICE;

	sio_initpar(&par);
	par.bits = s->format;
	par.le = SIO_LE_NATIVE;
	par.pchan = s->channels;
	par.rate = s->rate;
	par.sig = 1;

	if (!sio_setpar(handle, &par) || !sio_getpar(handle, &par)) {
		sio_close(handle);
		return SA_ERROR_NOT_SUPPORTED;
	}

	if (par.bits != s->format || par.le != SIO_LE_NATIVE ||
	    par.pchan != s->channels || par.rate != s->rate || par.sig != 1) {
		sio_close(handle);
		return SA_ERROR_NOT_SUPPORTED;
	}

	if (!sio_start(handle)) {
		sio_close(handle);
		return SA_ERROR_NOT_SUPPORTED;
	}

	s->buffer = par.bufsz;
	s->handle = handle;

	if (pthread_create(&s->thread, NULL, (void *)audio_callback, s) != 0)
		return SA_ERROR_SYSTEM;

	return SA_SUCCESS;
}

int
sa_stream_destroy(sa_stream_t *s)
{
	if (s == NULL)
		return SA_SUCCESS;

	pthread_mutex_lock(&s->mutex);
	s->thread = 0;
	while (s->head != NULL) {
		struct sa_buffer *next = s->head->next;
		free(s->head);
		s->head = next;
	}
	pthread_mutex_unlock(&s->mutex);

	if (pthread_mutex_destroy(&s->mutex) != 0)
		return SA_ERROR_SYSTEM;

	return SA_SUCCESS;
}

/*
 * DATA READ AND WRITE FUNCTIONS
 */

int
sa_stream_write(sa_stream_t *s, const void *data, size_t nbytes)
{
	struct sa_buffer *buffer;

	if (s == NULL || s->handle == NULL)
		return SA_ERROR_NO_INIT;

	if (nbytes == 0)
		return SA_SUCCESS;

	buffer = allocate_buffer(nbytes);
	if (buffer == NULL)
		return SA_ERROR_OOM;

	memcpy(buffer->data, data, nbytes);

	pthread_mutex_lock(&s->mutex);
	if (!s->head)
		s->head = buffer;
	else
		s->tail->next = buffer;
	s->tail = buffer;
	pthread_mutex_unlock(&s->mutex);

	return SA_SUCCESS;
}

/*
 * GENERAL QUERY AND SUPPORT FUNCTIONS
 */

int
sa_stream_get_write_size(sa_stream_t *s, size_t *size)
{
	if (s == NULL || s->handle == NULL)
		return SA_ERROR_NO_INIT;

	*size = s->buffer;

	return SA_SUCCESS;
}

int
sa_stream_get_position(sa_stream_t *s, sa_position_t position, int64_t *pos)
{
	if (s == NULL)
		return SA_ERROR_NO_INIT;

	if (position != SA_POSITION_WRITE_SOFTWARE)
		return SA_ERROR_NOT_SUPPORTED;

	pthread_mutex_lock(&s->mutex);
	*pos = s->position;
	pthread_mutex_unlock(&s->mutex);

	return SA_SUCCESS;
}

/*
 * PRIVATE SNDIO API SPECIFIC FUNCTIONS
 */

static struct sa_buffer *
allocate_buffer(size_t size)
{
	struct sa_buffer *buffer;

	buffer = malloc(sizeof(struct sa_buffer) + size);
	if (buffer != NULL) {
		buffer->next  = NULL;
		buffer->size  = size;
	}

	return buffer;
}

static void
audio_callback(void *data)
{
	sa_stream_t *s = (sa_stream_t *)data;
	struct sa_buffer *buffer;

	while (1) {
		if (s->thread == 0) {
			sio_close(s->handle);
			free(s);

			break;
		}

		pthread_mutex_lock(&s->mutex);
		if (!s->head) {
			pthread_mutex_unlock(&s->mutex);
			continue;
		}
		buffer = s->head;
		s->head = s->head->next;
		pthread_mutex_unlock(&s->mutex);

		sio_write(s->handle, buffer->data, buffer->size);

		pthread_mutex_lock(&s->mutex);
		s->position += buffer->size;
		pthread_mutex_unlock(&s->mutex);

		free(buffer);
	}
}

/*
 * UNSUPPORTED FUNCTIONS
 */

#define UNSUPPORTED(func)	func { return SA_ERROR_NOT_SUPPORTED; }

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

