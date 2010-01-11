/*
 * Copyright (c) 2009 Jacob Meuser <jakemsr@sdf.lonestar.org>
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


#include "transcode.h"
#include "libtc/optstr.h"

#include "libtc/tcmodule-plugin.h"

#define MOD_NAME        "import_sndio.so"
#define MOD_VERSION     "v0.0.1 (2009-12-24)"
#define MOD_CAP         "capture audio using sndio"
#define MOD_FEATURES \
    TC_MODULE_FEATURE_AUDIO | TC_MODULE_FEATURE_DEMULTIPLEX
#define MOD_FLAGS \
    TC_MODULE_FLAG_RECONFIGURABLE

#include <sndio.h>

static int sndio_init(void *, const char *, int, int, int);
static int sndio_grab(void *, size_t, char *, size_t *);
static int sndio_stop(void *);

struct tc_sndio_data {
    struct sio_hdl *hdl;
    struct sio_par par;
};

static const char tc_sndio_help[] =
    "Overview:\n"
    "    Captures audio from sndio devices.\n"
    "Options:\n"
    "    device=dev  will use 'dev' as the sndio device\n"
    "    help        prints this message\n";


static int
sndio_init(void *data, const char *dev, int rate, int bits, int chan)
{
    struct tc_sndio_data *d = data;

    if (!strncmp(dev, "/dev/null", 9) ||
      !strncmp(dev, "/dev/zero", 9) ||
      !strncmp(dev, "default", 7) ||
      !strncmp(dev, "", 1))
        d->hdl = sio_open(NULL, SIO_REC, 0);
    else
        d->hdl = sio_open(dev, SIO_REC, 0);

    if (!d->hdl) {
        tc_log_error(MOD_NAME, "opening audio device failed");
        return TC_ERROR;
    }

    sio_initpar(&d->par);
    d->par.bits = bits;
    d->par.sig = d->par.bits == 8 ? 0 : 1;
    d->par.le = SIO_LE_NATIVE;
    d->par.rchan = chan;
    d->par.rate = rate;
    d->par.xrun = SIO_SYNC;

    if (!sio_setpar(d->hdl, &d->par) || !sio_getpar(d->hdl, &d->par)) {
        tc_log_error(MOD_NAME, "setting audio parameters failed");
        return TC_ERROR;
    }

    if (d->par.bits != bits || d->par.rchan != chan || d->par.rate != rate) {
        tc_log_error(MOD_NAME, "could not set audio parameters as desired");
        return TC_ERROR;
    }

    if (!sio_start(d->hdl)) {
        tc_log_error(MOD_NAME, "could not start capture");
        return TC_ERROR;
    }

    return TC_OK;
}

static int
sndio_grab(void *data, size_t size, char *buffer, size_t *done)
{
    struct tc_sndio_data *d = data;
    size_t bytes_read;
    int ret;

    if (!d->hdl) {
        tc_log_error(MOD_NAME, "attempt to read NULL handle");
        return TC_ERROR;
    }

    bytes_read = 0;
    while (size > 0) {
        ret = sio_read(d->hdl, buffer + bytes_read, size);
        if (!ret) {
            tc_log_error(MOD_NAME, "audio read failed");
            return TC_ERROR;
        }
        bytes_read += ret;
        size -= ret;
    }
    if (done != NULL)
        *done = bytes_read;

    return TC_OK;
}

static int
sndio_stop(void *data)
{
    struct tc_sndio_data *d = data;

    if (d->hdl)
        sio_close(d->hdl);
    d->hdl = NULL;

    return TC_OK;
}


/* ------------------------------------------------------------
 * NMS interface
 * ------------------------------------------------------------*/

static int
tc_sndio_init(TCModuleInstance *self, uint32_t features)
{
    struct tc_sndio_data *d;

    TC_MODULE_SELF_CHECK(self, "init");
    TC_MODULE_INIT_CHECK(self, MOD_FEATURES, features);

    d = tc_zalloc(sizeof(struct tc_sndio_data));
    if (!d)
        return TC_ERROR;
    self->userdata = d;

    return TC_OK;
}

static int
tc_sndio_fini(TCModuleInstance *self)
{
    TC_MODULE_SELF_CHECK(self, "fini");

    tc_free(self->userdata);
    self->userdata = NULL;

    return TC_OK;
}

static int
tc_sndio_inspect(TCModuleInstance *self, const char *param, const char **value)
{
    TC_MODULE_SELF_CHECK(self, "inspect");

    if (optstr_lookup(param, "help"))
        *value = tc_sndio_help;

    return TC_OK;
}

static int
tc_sndio_configure(TCModuleInstance *self, const char *options, vob_t *vob)
{
    struct tc_sndio_data *d = NULL;
    char device[1024];

    TC_MODULE_SELF_CHECK(self, "configure");

    d = self->userdata;

    strlcpy(device, "default", 1024);
    if (options)
        optstr_get(options, "device", "%1023s", device);

    return sndio_init(d, device, vob->a_rate, vob->a_bits, vob->a_chan);
}

static int
tc_sndio_stop(TCModuleInstance *self)
{
    struct tc_sndio_data *d = NULL;

    TC_MODULE_SELF_CHECK(self, "stop");

    d = self->userdata;

    return sndio_stop(d);
}

static int
tc_sndio_demux(TCModuleInstance *self, vframe_list_t *vf, aframe_list_t *af)
{
    struct tc_sndio_data *d = NULL;
    size_t done;

    TC_MODULE_SELF_CHECK(self, "demultiplex");

    d = self->userdata;

    if (vf)
        vf->video_len = 0;

    if (af) {
        if (sndio_grab(d, af->audio_size, af->audio_buf, &done) != TC_OK)
            return TC_ERROR;
        af->audio_len = done;
    }

    return TC_OK;
}

static const TCCodecID tc_sndio_codecs_in[] =
    { TC_CODEC_ERROR };
static const TCCodecID tc_sndio_codecs_out[] =
    { TC_CODEC_PCM, TC_CODEC_ERROR };
static const TCCodecID tc_sndio_formats_in[] =
    { TC_FORMAT_RAW, TC_FORMAT_ERROR };
static const TCCodecID tc_sndio_formats_out[] =
    { TC_CODEC_ERROR };

static const TCModuleInfo tc_sndio_info = {
    .features    = MOD_FEATURES,
    .flags       = MOD_FLAGS,
    .name        = MOD_NAME,
    .version     = MOD_VERSION,
    .description = MOD_CAP,
    .codecs_in   = tc_sndio_codecs_in,
    .codecs_out  = tc_sndio_codecs_out,
    .formats_in  = tc_sndio_formats_in,
    .formats_out = tc_sndio_formats_out
};

static const TCModuleClass tc_sndio_class = {
    TC_MODULE_CLASS_HEAD(tc_sndio),
    .init        = tc_sndio_init,
    .fini        = tc_sndio_fini,
    .configure   = tc_sndio_configure,
    .stop        = tc_sndio_stop,
    .inspect     = tc_sndio_inspect,
    .demultiplex = tc_sndio_demux
};

TC_MODULE_ENTRY_POINT(tc_sndio)


/* ------------------------------------------------------------
 * old interface
 * ------------------------------------------------------------*/

static int verbose_flag = TC_QUIET;
static int capability_flag = TC_CAP_PCM;

#define MOD_PRE sndio
#define MOD_CODEC	"(audio) pcm"

#include "import_def.h"

static struct tc_sndio_data data;

MOD_open
{
    int ret = TC_OK;

    switch (param->flag) {
    case TC_VIDEO:
        tc_log_warn(MOD_NAME, "unsupported request (open video)");
        ret = TC_ERROR;
        break;
    case TC_AUDIO:
        if (verbose_flag & TC_DEBUG)
            tc_log_info(MOD_NAME, "sndio audio capture");
        ret = sndio_init(&data, vob->audio_in_file, vob->a_rate,
          vob->a_bits, vob->a_chan);
        break;
    default:
        tc_log_warn(MOD_NAME, "unsupported request (open)");
        ret = TC_ERROR;
        break;
    }

    return ret;
}

MOD_decode
{
    int ret = TC_OK;

    switch (param->flag) {
    case TC_VIDEO:
        tc_log_error(MOD_NAME, "unsupported request (decode video)");
        ret = TC_ERROR;
        break;
    case TC_AUDIO:
        ret = sndio_grab(&data, param->size, param->buffer, NULL);
        break;
    default:
        tc_log_error(MOD_NAME, "unsupported request (decode)");
        ret = TC_ERROR;
        break;
    }

    return ret;
}

MOD_close
{
    int ret = TC_OK;

    switch (param->flag) {
    case TC_VIDEO:
        tc_log_error(MOD_NAME, "unsupported request (close video)");
        ret = TC_ERROR;
        break;
    case TC_AUDIO:
        ret = sndio_stop(&data);
        break;
    default:
        tc_log_error(MOD_NAME, "unsupported request (close)");
        ret = TC_ERROR;
        break;
    }

    return ret;
}
