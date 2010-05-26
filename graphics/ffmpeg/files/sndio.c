/*	$OpenBSD: sndio.c,v 1.1 2010/05/26 21:38:52 jakemsr Exp $	*/

/*
 * sndio play and grab interface
 * Copyright (c) 2010 Jacob Meuser
 * Copyright (c) 2000, 2001 Fabrice Bellard
 *
 * This file is part of FFmpeg.
 *
 * FFmpeg is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * FFmpeg is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with FFmpeg; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
 */

#include "config.h"
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <unistd.h>

#include <sndio.h>

#include "libavutil/log.h"
#include "libavcodec/avcodec.h"
#include "libavformat/avformat.h"


typedef struct {
    struct sio_hdl *hdl;
    int sample_rate;
    int channels;
    int bps;
    enum CodecID codec_id;
    int buffer_size;
    uint8_t *buffer;
    int buffer_ptr;
    long long hwpos, softpos;
} AudioData;

static void movecb(void *addr, int delta)
{
    AudioData *s = addr;

    s->hwpos += delta * s->channels * s->bps;
}

static int audio_open(AVFormatContext *s1, int is_output, const char *audio_device)
{
    AudioData *s = s1->priv_data;
    struct sio_hdl *hdl = NULL;
    struct sio_par par;

    if (is_output)
        hdl = sio_open(audio_device, SIO_PLAY, 0);
    else
        hdl = sio_open(audio_device, SIO_REC, 0);
    if (hdl == NULL) {
        av_log(s1, AV_LOG_ERROR, "could not open sndio device\n");
        return AVERROR(EIO);
    }

    sio_initpar(&par);
    par.bits = 16;
    par.sig = 1;
    par.le = SIO_LE_NATIVE;
    if (is_output)
        par.pchan = s->channels;
    else
        par.rchan = s->channels;
    par.rate = s->sample_rate;

    if (!sio_setpar(hdl, &par) || !sio_getpar(hdl, &par)) {
        av_log(s1, AV_LOG_ERROR, "error setting sndio parameters\n");
        goto fail;
    }

    if (par.bits != 16 || par.sig != 1 || par.le != SIO_LE_NATIVE ||
      (is_output && (par.pchan != s->channels)) ||
      (!is_output && (par.rchan != s->channels)) ||
      (par.rate != s->sample_rate)) {
        av_log(s1, AV_LOG_ERROR, "could not set appropriate sndio parameters\n");
        goto fail;
    }

    s->buffer_size = par.round * par.bps *
      (is_output ? par.pchan : par.rchan);

    s->buffer = av_malloc(s->buffer_size);
    if (s->buffer == NULL) {
        av_log(s1, AV_LOG_ERROR, "could not allocate buffer\n");
        goto fail;
    }

    if (par.le)
        s->codec_id = CODEC_ID_PCM_S16LE;
    else
        s->codec_id = CODEC_ID_PCM_S16BE;

    if (is_output)
        s->channels = par.pchan;
    else
        s->channels = par.rchan;

    s->sample_rate = par.rate;
    s->bps = par.bps;

    sio_onmove(hdl, movecb, s);

    if (!sio_start(hdl)) {
        av_log(s1, AV_LOG_ERROR, "could not start sndio\n");
        goto fail;
    }

    s->hdl = hdl;

    return 0;

fail:
    if (s->buffer)
        av_free(s->buffer);
    if (hdl)
        sio_close(hdl);
    return AVERROR(EIO);
}

static int audio_close(AudioData *s)
{
    if (s->buffer)
        av_free(s->buffer);
    if (s->hdl)
        sio_close(s->hdl);
    return 0;
}

/* sound output support */
static int audio_write_header(AVFormatContext *s1)
{
    AudioData *s = s1->priv_data;
    AVStream *st;
    int ret;

    st = s1->streams[0];
    s->sample_rate = st->codec->sample_rate;
    s->channels = st->codec->channels;
    ret = audio_open(s1, 1, s1->filename);
    if (ret < 0) {
        return AVERROR(EIO);
    } else {
        return 0;
    }
}

static int audio_write_packet(AVFormatContext *s1, AVPacket *pkt)
{
    AudioData *s = s1->priv_data;
    int len, ret;
    int size = pkt->size;
    uint8_t *buf= pkt->data;

    while (size > 0) {
        len = s->buffer_size - s->buffer_ptr;
        if (len > size)
            len = size;
        memcpy(s->buffer + s->buffer_ptr, buf, len);
        buf += len;
        size -= len;
        s->buffer_ptr += len;
        if (s->buffer_ptr >= s->buffer_size) {
            ret = sio_write(s->hdl, s->buffer, s->buffer_size);
            if (ret == 0 || sio_eof(s->hdl))
                return AVERROR(EIO);
            s->softpos += ret;
            s->buffer_ptr = 0;
        }
    }
    return 0;
}

static int audio_write_trailer(AVFormatContext *s1)
{
    AudioData *s = s1->priv_data;

    audio_close(s);
    return 0;
}

/* grab support */

static int audio_read_header(AVFormatContext *s1, AVFormatParameters *ap)
{
    AudioData *s = s1->priv_data;
    AVStream *st;
    int ret;

    if (ap->sample_rate <= 0 || ap->channels <= 0)
        return -1;

    st = av_new_stream(s1, 0);
    if (!st) {
        return AVERROR(ENOMEM);
    }
    s->sample_rate = ap->sample_rate;
    s->channels = ap->channels;

    ret = audio_open(s1, 0, s1->filename);
    if (ret < 0) {
        return AVERROR(EIO);
    }

    /* take real parameters */
    st->codec->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codec->codec_id = s->codec_id;
    st->codec->sample_rate = s->sample_rate;
    st->codec->channels = s->channels;

    av_set_pts_info(st, 64, 1, 1000000);  /* 64 bits pts in us */
    return 0;
}

static int audio_read_packet(AVFormatContext *s1, AVPacket *pkt)
{
    AudioData *s = s1->priv_data;
    int ret, bdelay;
    int64_t cur_time;

    if ((ret=av_new_packet(pkt, s->buffer_size)) < 0)
        return ret;

    ret = sio_read(s->hdl, pkt->data, pkt->size);
    if (ret == 0 || sio_eof(s->hdl)) {
        av_free_packet(pkt);
        pkt->size = 0;
        return AVERROR_EOF;
    }
    pkt->size = ret;
    s->softpos += ret;

    /* compute pts of the start of the packet */
    cur_time = av_gettime();

    bdelay = ret + s->hwpos - s->softpos;

    /* convert to wanted units */
    pkt->pts = cur_time;

    return 0;
}

static int audio_read_close(AVFormatContext *s1)
{
    AudioData *s = s1->priv_data;

    audio_close(s);
    return 0;
}

#if CONFIG_SNDIO_INDEV
AVInputFormat sndio_demuxer = {
    "sndio",
    NULL_IF_CONFIG_SMALL("sndio(7) audio capture"),
    sizeof(AudioData),
    NULL,
    audio_read_header,
    audio_read_packet,
    audio_read_close,
    .flags = AVFMT_NOFILE,
};
#endif

#if CONFIG_SNDIO_OUTDEV
AVOutputFormat sndio_muxer = {
    "sndio",
    NULL_IF_CONFIG_SMALL("sndio(7) audio playback"),
    "",
    "",
    sizeof(AudioData),
    /* XXX: we make the assumption that the soundcard accepts this format */
    /* XXX: find better solution with "preinit" method, needed also in
       other formats */
#if HAVE_BIGENDIAN
    CODEC_ID_PCM_S16BE,
#else
    CODEC_ID_PCM_S16LE,
#endif
    CODEC_ID_NONE,
    audio_write_header,
    audio_write_packet,
    audio_write_trailer,
    .flags = AVFMT_NOFILE,
};
#endif
