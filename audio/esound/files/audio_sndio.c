/* $OpenBSD: audio_sndio.c,v 1.1 2008/12/20 08:58:32 jakemsr Exp $ */

/*
 * Copyright (c) 2008 Jacob Meuser <jakemsr@sdf.lonestar.org>
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

#include "config.h"

#include <sndio.h>

struct sio_hdl *hdl = NULL;

#define ARCH_esd_audio_close
void esd_audio_close()
{
    if (hdl != NULL) {
        sio_close(hdl);
        hdl = NULL;
    }
}

#define ARCH_esd_audio_open
int esd_audio_open()
{
    char *device;
    struct sio_par par;
    int mode = SIO_PLAY;

    if (hdl != NULL) {
        fprintf(stderr, "sndio already opened\n");
        return(1);
    }

    sio_initpar(&par);

    if ((esd_audio_format & ESD_MASK_FUNC) == ESD_RECORD)
        mode |= SIO_REC;

    device = esd_audio_device ? esd_audio_device : getenv("AUDIODEVICE");
    if ((hdl = sio_open(device, mode, 0)) == NULL) {
        fprintf(stderr, "sio_open failed\n");
        goto bad;
    }

    par.le = (BYTE_ORDER == 4321) ? 0 : 1;
    if ((esd_audio_format & ESD_MASK_BITS) == ESD_BITS16) {
        par.bits = 16;
        par.sig = 1;
    } else {
        par.bits = 8;
        par.sig = 0;
    }

    par.pchan = (((esd_audio_format & ESD_MASK_CHAN) == ESD_STEREO) ? 2 : 1);
    if (mode & SIO_REC)
        par.rchan = par.pchan;

    par.appbufsz = ESD_BUF_SIZE;

    par.rate = esd_audio_rate;

    if (!sio_setpar(hdl, &par)) {
        fprintf(stderr, "sio_setpar failed\n");
        goto bad;
    }

    if (!sio_getpar(hdl, &par)) {
        fprintf(stderr, "sio_getpar failed\n");
        goto bad;
    }

    /* check that the actual parameters are what we asked for */
    if (fabs(par.rate - esd_audio_rate) > esd_audio_rate * 0.05) {
        fprintf(stderr, "Unsupported rate: %i Hz\n", esd_audio_rate);
        goto bad;
    }
    if ((esd_audio_format & ESD_MASK_BITS) == ESD_BITS16) {
        if (par.sig != 1 || par.bits != 16) {
            fprintf(stderr, "Unsupported bits: 16\n");
            goto bad;
        }
    } else {
        if (par.sig != 0 || par.bits != 8) {
            fprintf(stderr, "Unsupported bits: 8\n");
            goto bad;
        }
    }
    if ((esd_audio_format & ESD_MASK_CHAN) == ESD_STEREO) {
        if (par.pchan != 2) {
            fprintf(stderr, "Unsupported channels: 2\n");
            goto bad;
        }
    } else {
        if (par.pchan != 1) {
            fprintf(stderr, "Unsupported channels: 1\n");
            goto bad;
        }
    }

    if (!sio_start(hdl)) {
        fprintf(stderr, "sio_start failed\n");
        goto bad;
    }

    return(1);

bad:
    esd_audio_close();
    return(-1);
}

#define ARCH_esd_audio_write
int esd_audio_write(void *buffer, int buf_size)
{
    return sio_write(hdl, buffer, buf_size);
}

#define ARCH_esd_audio_read
int esd_audio_read(void *buffer, int buf_size)
{
    return sio_read(hdl, buffer, buf_size);
}
