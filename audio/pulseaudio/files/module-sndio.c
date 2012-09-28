/* $OpenBSD: module-sndio.c,v 1.1 2012/09/28 17:09:03 eric Exp $ */
/*
 * Copyright (c) 2012 Eric Faurot <eric@openbsd.org>
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

#include <sndio.h>

#include "config.h"

#include <pulse/util.h>

#include <pulsecore/core-error.h>
#include <pulsecore/thread.h>
#include <pulsecore/sink.h>
#include <pulsecore/source.h>
#include <pulsecore/module.h>
#include <pulsecore/sample-util.h>
#include <pulsecore/core-util.h>
#include <pulsecore/modargs.h>
#include <pulsecore/log.h>
#include <pulsecore/macro.h>
#include <pulsecore/thread-mq.h>
#include <pulsecore/rtpoll.h>
#include <pulsecore/poll.h>

#include "module-sndio-symdef.h"

/*
 * TODO
 *
 * - handle latency correctly
 * - make recording work correctly with playback
 */

PA_MODULE_AUTHOR("Eric Faurot");
PA_MODULE_DESCRIPTION("OpenBSD sndio sink/source");
PA_MODULE_VERSION("0.0");
PA_MODULE_LOAD_ONCE(FALSE);
PA_MODULE_USAGE(
	"sink_name=<name for the sink> "
	"sink_properties=<properties for the sink> "
	"source_name=<name for the source> "
	"source_properties=<properties for the source> "
	"device=<sndio device> "
	"record=<enable source?> "
	"playback=<enable sink?> "
	"format=<sample format> "
	"rate=<sample rate> "
	"channels=<number of channels> "
	"channel_map=<channel map> ");

static const char* const modargs[] = {
	"sink_name",
	"sink_properties",
	"source_name",
	"source_properties",
	"device",
	"record",
	"playback",
	"format",
	"rate",
	"channels",
	"channel_map",
	NULL
};

struct userdata {
	pa_core		*core;
	pa_module	*module;
	pa_sink		*sink;
	pa_source	*source;

	pa_thread	*thread;
	pa_thread_mq	 thread_mq;
	pa_rtpoll	*rtpoll;
	pa_rtpoll_item	*rtpoll_item;

	pa_memchunk	 memchunk;

	struct sio_hdl	*hdl;
	struct sio_par	 par;
	size_t		 bufsz;

	int		 sink_running;
	unsigned int	 volume;
};

static void
sndio_on_volume(void *arg, unsigned int vol)
{
	struct userdata *u = arg;

	u->volume = vol;
}

static void
sndio_get_volume(pa_sink *s)
{
	struct userdata *u = s->userdata;
	int		 i;
	uint32_t	 v;

	if (u->volume >= SIO_MAXVOL)
		v = PA_VOLUME_NORM;
	else
		v = PA_CLAMP_VOLUME((u->volume * PA_VOLUME_NORM) / SIO_MAXVOL);

	for (i = 0; i < s->real_volume.channels; i++)
		s->real_volume.values[i] = v;
}

static void
sndio_set_volume(pa_sink *s)
{
	struct userdata *u = s->userdata;
	unsigned int	 vol;

	if (s->real_volume.values[0] >= PA_VOLUME_NORM)
		vol = SIO_MAXVOL;
	else
		vol = (s->real_volume.values[0] * SIO_MAXVOL) / PA_VOLUME_NORM;

	sio_setvol(u->hdl, vol);
}

static int
sndio_sink_message(pa_msgobject *o, int code, void *data, int64_t offset,
    pa_memchunk *chunk)
{
	struct userdata	*u = PA_SINK(o)->userdata;
	pa_sink_state_t	 state;
	int		 ret;

	printf("sndio_sink_msg: obj=%p code=%i data=%p offset=%lli chunk=%p\n",
	    o, code, data, offset, chunk);
	switch (code) {
	case PA_SINK_MESSAGE_GET_LATENCY:
		printf("sink:PA_SINK_MESSAGE_GET_LATENCY\n");
		*(pa_usec_t*)data = pa_bytes_to_usec(u->par.bufsz,
		    &u->sink->sample_spec);
		return (0);
	case PA_SINK_MESSAGE_SET_STATE:
		printf("sink:PA_SINK_MESSAGE_SET_STATE ");
		state = (pa_sink_state_t)(data);
		switch (state) {
		case PA_SINK_SUSPENDED:
			printf("SUSPEND\n");
			if (u->sink_running == 1)
				sio_stop(u->hdl);
			u->sink_running = 0;
			break;
		case PA_SINK_IDLE:
		case PA_SINK_RUNNING:
			printf((code == PA_SINK_IDLE) ? "IDLE\n" : "RUNNING\n");
			if (u->sink_running == 0)
				sio_start(u->hdl);
			u->sink_running = 1;
			break;
		case PA_SINK_INVALID_STATE:
			printf("INVALID_STATE\n");
			break;
		case PA_SINK_UNLINKED:
			printf("UNLINKED\n");
			break;
		case PA_SINK_INIT:
			printf("INIT\n");
			break;
		}
		break;
	default:
		printf("sink:PA_SINK_???\n");
	}

	ret = pa_sink_process_msg(o, code, data, offset, chunk);

	return (ret);
}

static int
sndio_source_message(pa_msgobject *o, int code, void *data, int64_t offset,
    pa_memchunk *chunk)
{
	struct userdata		*u = PA_SOURCE(o)->userdata;
	pa_source_state_t	 state;
	int			 ret;

	printf("sndio_source_msg: obj=%p code=%i data=%p offset=%lli chunk=%p\n",
	    o, code, data, offset, chunk);
	switch (code) {
	case PA_SOURCE_MESSAGE_GET_LATENCY:
		printf("source:PA_SOURCE_MESSAGE_GET_LATENCY\n");
		*(pa_usec_t*)data = pa_bytes_to_usec(u->bufsz,
		    &u->source->sample_spec);
		return (0);
	case PA_SOURCE_MESSAGE_SET_STATE:
		printf("source:PA_SOURCE_MESSAGE_SET_STATE ");
		state = (pa_source_state_t)(data);
		switch (state) {
		case PA_SOURCE_SUSPENDED:
			printf("SUSPEND\n");
			sio_stop(u->hdl);
			break;
		case PA_SOURCE_IDLE:
		case PA_SOURCE_RUNNING:
			printf((code == PA_SOURCE_IDLE) ? "IDLE\n":"RUNNING\n");
			sio_start(u->hdl);
			break;
		case PA_SOURCE_INVALID_STATE:
			printf("INVALID_STATE\n");
			break;
		case PA_SOURCE_UNLINKED:
			printf("UNLINKED\n");
			break;
		case PA_SOURCE_INIT:
			printf("INIT\n");
			break;
		}
		break;
	default:
		printf("source:PA_SOURCE_???\n");
	}

	ret = pa_source_process_msg(o, code, data, offset, chunk);

	return (ret);
}

static void
sndio_thread(void *arg)
{
	struct userdata	*u = arg;
	int		 ret;
	short		 revents, events;
	struct pollfd	*pollfds;
	size_t		 w, r, l;
	char		*p;
	struct pa_memchunk memchunk;

	pa_log_debug("sndio thread starting up");

	pa_thread_mq_install(&u->thread_mq);

	pollfds = pa_rtpoll_item_get_pollfd(u->rtpoll_item, NULL);

	revents = 0;
	for (;;) {
		printf("sndio_thread: loop\n");

		/* ??? oss does that. */
		if (u->sink
		    && PA_SINK_IS_OPENED(u->sink->thread_info.state)
		    && u->sink->thread_info.rewind_requested)
			pa_sink_process_rewind(u->sink, 0);

		if (u->sink &&
		    PA_SINK_IS_OPENED(u->sink->thread_info.state)
		    && (revents & POLLOUT)) {
			if (u->memchunk.length <= 0)
                        	pa_sink_render(u->sink, u->bufsz, &u->memchunk);
			p = pa_memblock_acquire(u->memchunk.memblock);
			w = sio_write(u->hdl, p + u->memchunk.index,
			    u->memchunk.length);
			pa_memblock_release(u->memchunk.memblock);
			pa_log("wrote %zu bytes of %zu", w, u->memchunk.length);
			u->memchunk.index += w;
			u->memchunk.length -= w;
			if (u->memchunk.length <= 0) {
				pa_memblock_unref(u->memchunk.memblock);
				pa_memchunk_reset(&u->memchunk);
			}
		}

		if (u->source &&
		    PA_SOURCE_IS_OPENED(u->source->thread_info.state)
		    && (revents & POLLIN)) {
			memchunk.memblock = pa_memblock_new(u->core->mempool,
			    (size_t) -1);
			l = pa_memblock_get_length(memchunk.memblock);
			if (l > u->bufsz)
				l = u->bufsz;
			p = pa_memblock_acquire(memchunk.memblock);
			r = sio_read(u->hdl, p, l);
			pa_memblock_release(memchunk.memblock);
			pa_log("read %zu bytes of %zu", r, l);
			memchunk.index = 0;
			memchunk.length = r;
			pa_source_post(u->source, &memchunk);
			pa_memblock_unref(memchunk.memblock);
		}

		events = 0;
		if (u->source &&
		    PA_SOURCE_IS_OPENED(u->source->thread_info.state))
			events |= POLLIN;
		if (u->sink &&
		    PA_SINK_IS_OPENED(u->sink->thread_info.state))
			events |= POLLOUT;
		sio_pollfd(u->hdl, pollfds, events);

		if ((ret = pa_rtpoll_run(u->rtpoll, TRUE)) < 0)
            		goto fail;
		if (ret == 0)
            		goto finish;

		revents = sio_revents(u->hdl, pollfds);

		printf("sndio_thread: loop ret=%i, revents=%x\n", ret, (int)revents);

		if (revents & POLLHUP) {
			pa_log("POLLHUP!");
			break;
		}
	}

    fail:
	pa_asyncmsgq_post(u->thread_mq.outq, PA_MSGOBJECT(u->core),
	    PA_CORE_MESSAGE_UNLOAD_MODULE, u->module, 0, NULL, NULL);
	pa_asyncmsgq_wait_for(u->thread_mq.inq, PA_MESSAGE_SHUTDOWN);
    finish:
	pa_log_debug("sndio thread shutting down");
}

int
pa__init(pa_module *m)
{
	pa_modargs		*ma = NULL;
	pa_bool_t		 record = TRUE, playback = TRUE;
	pa_sample_spec		 ss;
	pa_channel_map		 map;
	pa_sink_new_data	 sink;
	pa_source_new_data	 source;

	struct sio_par		 par;
	unsigned int		 mode = 0;
	char			 buf[256];
	const char		*name, *dev;
	struct userdata		*u = NULL;
	int			 nfds;
	struct			 pollfd;

	if ((u = calloc(1, sizeof(struct userdata))) == NULL) {
		pa_log("Failed to allocate userdata");
		goto fail;
	}
	m->userdata = u;
	u->core = m->core;
	u->module = m;
	u->rtpoll = pa_rtpoll_new();
	pa_thread_mq_init(&u->thread_mq, m->core->mainloop, u->rtpoll);

	if (!(ma = pa_modargs_new(m->argument, modargs))) {
		pa_log("Failed to parse module arguments.");
		goto fail;
	}

	if (pa_modargs_get_value_boolean(ma, "record", &record) < 0 ||
	    pa_modargs_get_value_boolean(ma, "playback", &playback) < 0) {
		pa_log("record= and playback= expect boolean argument");
		goto fail;
	}

	if (playback)
		mode |= SIO_PLAY;
	if (record)
		mode |= SIO_REC;

	if (!mode) {
		pa_log("Neither playback nor record enabled for device");
		goto fail;
	}

	dev = pa_modargs_get_value(ma, "device", NULL);
	if ((u->hdl = sio_open(dev, mode, 1)) == NULL) {
		pa_log("Cannot open sndio device.");
		goto fail;
	}

	ss = m->core->default_sample_spec;
	map = m->core->default_channel_map;

	if (pa_modargs_get_sample_spec_and_channel_map(ma, &ss, &map,
	    PA_CHANNEL_MAP_OSS) < 0) {
		pa_log("Failed to parse sample specification or channel map");
		goto fail;
	}

	sio_initpar(&par);
	par.rate = ss.rate;
	par.pchan = (mode & SIO_PLAY) ? ss.channels : 0;
	par.rchan = (mode & SIO_REC) ? ss.channels : 0;
	par.sig = 1;

	switch (ss.format) {
	case PA_SAMPLE_U8:
		par.bits = 8;
		par.bps = 1;
		par.sig = 0;
		break;
	case PA_SAMPLE_S16LE:
	case PA_SAMPLE_S16BE:
		par.bits = 16;
		par.bps = 2;
		par.le = (ss.format == PA_SAMPLE_S16LE) ? 1 : 0;
		break;
	case PA_SAMPLE_S32LE:
	case PA_SAMPLE_S32BE:
		par.bits = 32;
		par.bps = 4;
		par.le = (ss.format == PA_SAMPLE_S32LE) ? 1 : 0;
		break;
	case PA_SAMPLE_S24LE:
	case PA_SAMPLE_S24BE:
		par.bits = 24;
		par.bps = 3;
		par.le = (ss.format == PA_SAMPLE_S24LE) ? 1 : 0;
		break;
	case PA_SAMPLE_S24_32LE:
	case PA_SAMPLE_S24_32BE:
		par.bits = 24;
		par.bps = 4;
		par.le = (ss.format == PA_SAMPLE_S24_32LE) ? 1 : 0;
		par.msb = 0; /* XXX check this */
		break;
	case PA_SAMPLE_ALAW:
	case PA_SAMPLE_ULAW:
	case PA_SAMPLE_FLOAT32LE:
	case PA_SAMPLE_FLOAT32BE:
	default:
		pa_log("Unsupported sample format");
		goto fail;
	}

	/* XXX what to do with channel map? */

	if (sio_setpar(u->hdl, &par) == -1) {
		pa_log("Could not set requested parameters");
		goto fail;
	}
	if (sio_getpar(u->hdl, &u->par) == -1) {
		pa_log("Could not retreive parameters");
		goto fail;
	}
	if (u->par.rate != par.rate)
		pa_log_warn("rate changed: %u -> %u", par.rate, u->par.rate);
	if (u->par.pchan != par.pchan)
		pa_log_warn("playback channels changed: %u -> %u",
		    par.rchan, u->par.rchan);
	if (u->par.rchan != par.rchan)
		pa_log_warn("record channels changed: %u -> %u",
		    par.rchan, u->par.rchan);
	/* XXX check sample format */

	ss.rate = u->par.rate;
	ss.channels = (mode & SIO_PLAY) ? u->par.pchan : u->par.rchan;
	/* XXX what to do with map? */

	u->bufsz = u->par.bufsz * u->par.bps * u->par.pchan;

	nfds = sio_nfds(u->hdl);
	u->rtpoll_item = pa_rtpoll_item_new(u->rtpoll, PA_RTPOLL_NEVER, nfds);
	if (u->rtpoll_item == NULL) {
		pa_log("could not allocate poll item");
		goto fail;
	}

	if (mode & SIO_PLAY) {

		pa_sink_new_data_init(&sink);
		sink.driver = __FILE__;
		sink.module = m;
		sink.namereg_fail = TRUE;
		name = pa_modargs_get_value(ma, "sink_name", NULL);
		if (name == NULL) {
			sink.namereg_fail = FALSE;
			snprintf(buf, sizeof (buf), "sndio-sink");
			name = buf;
		}
		pa_sink_new_data_set_name(&sink, name);
		pa_sink_new_data_set_sample_spec(&sink, &ss);
		pa_sink_new_data_set_channel_map(&sink, &map);
		pa_proplist_sets(sink.proplist,
		    PA_PROP_DEVICE_STRING, dev ? dev : "default");
		pa_proplist_sets(sink.proplist,
		    PA_PROP_DEVICE_API, "sndio");
		pa_proplist_sets(sink.proplist,
		    PA_PROP_DEVICE_DESCRIPTION, dev ? dev : "default");
		pa_proplist_sets(sink.proplist,
		    PA_PROP_DEVICE_ACCESS_MODE, "serial");
/*
		pa_proplist_setf(sink.proplist,
		    PA_PROP_DEVICE_BUFFERING_BUFFER_SIZE, "%u",
		    u->par.bufsz * u->par.bps * u->par.pchan);
*/

/*
		pa_proplist_setf(sink.proplist,
		    PA_PROP_DEVICE_BUFFERING_FRAGMENT_SIZE, "%lu",
		    (unsigned long) (u->out_fragment_size));
*/
		if (pa_modargs_get_proplist(ma, "sink_properties",
		    sink.proplist, PA_UPDATE_REPLACE) < 0) {
			pa_log("Invalid sink properties");
			pa_sink_new_data_done(&sink);
			goto fail;
		}

		u->sink = pa_sink_new(m->core, &sink, PA_SINK_LATENCY);
		pa_sink_new_data_done(&sink);
		if (u->sink == NULL) {
			pa_log("Failed to create sync");
			goto fail;
		}

		u->sink->userdata = u;
		u->sink->parent.process_msg = sndio_sink_message;
		pa_sink_set_asyncmsgq(u->sink, u->thread_mq.inq);
		pa_sink_set_rtpoll(u->sink, u->rtpoll);
		pa_sink_set_fixed_latency(u->sink,
		    pa_bytes_to_usec(u->bufsz, &u->sink->sample_spec));

		sio_onvol(u->hdl, sndio_on_volume, u);
		pa_sink_set_get_volume_callback(u->sink, sndio_get_volume);
		pa_sink_set_set_volume_callback(u->sink, sndio_set_volume);
		u->sink->n_volume_steps = SIO_MAXVOL + 1;
	}

	if (mode & SIO_REC) {
		pa_source_new_data_init(&source);
		source.driver = __FILE__;
		source.module = m;
		source.namereg_fail = TRUE;
		name = pa_modargs_get_value(ma, "source_name", NULL);
		if (name == NULL) {
			source.namereg_fail = FALSE;
			snprintf(buf, sizeof (buf), "sndio-source");
			name = buf;
		}
		pa_source_new_data_set_name(&source, name);
		pa_source_new_data_set_sample_spec(&source, &ss);
		pa_source_new_data_set_channel_map(&source, &map);
		pa_proplist_sets(source.proplist,
		    PA_PROP_DEVICE_STRING, dev ? dev : "default");
		pa_proplist_sets(source.proplist,
		    PA_PROP_DEVICE_API, "sndio");
		pa_proplist_sets(source.proplist,
		    PA_PROP_DEVICE_DESCRIPTION, dev ? dev : "default");
		pa_proplist_sets(source.proplist,
		    PA_PROP_DEVICE_ACCESS_MODE, "serial");
		pa_proplist_setf(source.proplist,
		    PA_PROP_DEVICE_BUFFERING_BUFFER_SIZE, "%u",
		    u->par.bufsz * u->par.bps * u->par.rchan);
/*
		pa_proplist_setf(source.proplist,
		    PA_PROP_DEVICE_BUFFERING_FRAGMENT_SIZE, "%lu",
		    (unsigned long) (u->in_fragment_size));
*/
		if (pa_modargs_get_proplist(ma, "source_properties",
		    source.proplist, PA_UPDATE_REPLACE) < 0) {
			pa_log("Invalid source properties");
			pa_source_new_data_done(&source);
			goto fail;
		}

		u->source = pa_source_new(m->core, &source, PA_SOURCE_LATENCY);
		pa_source_new_data_done(&source);
		if (u->source == NULL) {
			pa_log("Failed to create source");
			goto fail;
		}

        	u->source->userdata = u;
		u->source->parent.process_msg = sndio_source_message;
		pa_source_set_asyncmsgq(u->source, u->thread_mq.inq);
		pa_source_set_rtpoll(u->source, u->rtpoll);
/*
		pa_source_set_fixed_latency(u->source,
		    pa_bytes_to_usec(u->in_hwbuf_size, &u->source->sample_spec));
*/
	}

	pa_log("buffer: frame=%zu bytes=%zu msec=%zu", u->par.bufsz, u->bufsz, 
		pa_bytes_to_usec(u->bufsz, &u->sink->sample_spec));

	pa_memchunk_reset(&u->memchunk);

	if ((u->thread = pa_thread_new("sndio", sndio_thread, u)) == NULL) {
		pa_log("Failed to create sndio thread.");
		goto fail;
	}

	if (u->sink)
		pa_sink_put(u->sink);
	if (u->source)
		pa_source_put(u->source);

	pa_modargs_free(ma);

	return (0);
fail:
	if (u)
		pa__done(m);
	if (ma)
		pa_modargs_free(ma);

	return (-1);
}

void
pa__done(pa_module *m)
{
	struct userdata *u;

	if (!(u = m->userdata))
		return;

	if (u->sink)
		pa_sink_unlink(u->sink);
	if (u->source)
		pa_source_unlink(u->source);
	if (u->thread) {
        	pa_asyncmsgq_send(u->thread_mq.inq, NULL, PA_MESSAGE_SHUTDOWN,
		    NULL, 0, NULL);
		pa_thread_free(u->thread);
	}
	pa_thread_mq_done(&u->thread_mq);

	if (u->sink)
		pa_sink_unref(u->sink);
	if (u->source)
		pa_source_unref(u->source);
	if (u->memchunk.memblock)
		pa_memblock_unref(u->memchunk.memblock);
	if (u->rtpoll_item)
		pa_rtpoll_item_free(u->rtpoll_item);
	if (u->rtpoll)
		pa_rtpoll_free(u->rtpoll);
	if (u->hdl)
		sio_close(u->hdl);
	free(u);
}
