/*
 * sndio play and grab interface
 * Copyright (c) 2010 Jacob Meuser
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

#ifndef AVDEVICE_SNDIO_COMMON_H
#define AVDEVICE_SNDIO_COMMON_H

#include <sndio.h>
#include "config.h"
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

int ff_sndio_open(AVFormatContext *, int, const char *);
int ff_sndio_close(AudioData *);

#endif /* AVDEVICE_SNDIO_COMMON_H */
