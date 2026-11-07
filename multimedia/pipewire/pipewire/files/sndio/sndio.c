/* Spa sndio support */
/* SPDX-FileCopyrightText: Copyright © 2026 Antoine Jacoutot <ajacoutot@openbsd.org> */
/* SPDX-License-Identifier: MIT */

#include <errno.h>
#include <string.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <poll.h>
#include <time.h>
#include <pthread.h>
#include <signal.h>

#include "sndio-pcm.h"
#include "sndio-utils.h"

SPA_LOG_TOPIC_DEFINE(sndio_log_topic, "spa.sndio");

/*
 * Per-thread "SIGPIPE already blocked" marker.  This must not be a
 * __thread variable: OpenBSD uses emulated TLS, whose pthread key
 * destructor lives in this plugin, and the data-loop thread exits
 * after pipewire has dlclose()d us, so the destructor would be called
 * from unmapped memory.  Use an explicit key without a destructor
 * instead (the value is only a marker, there is nothing to free), and
 * delete the key when the plugin is unloaded.
 */
static pthread_once_t sigpipe_once = PTHREAD_ONCE_INIT;
static pthread_key_t sigpipe_key;
static bool sigpipe_key_valid;

static void sigpipe_key_init(void)
{
	sigpipe_key_valid = pthread_key_create(&sigpipe_key, NULL) == 0;
}

static void __attribute__((destructor)) sigpipe_key_fini(void)
{
	if (sigpipe_key_valid)
		pthread_key_delete(sigpipe_key);
}

void spa_sndio_block_sigpipe(void)
{
	sigset_t set;

	pthread_once(&sigpipe_once, sigpipe_key_init);
	if (sigpipe_key_valid && pthread_getspecific(sigpipe_key) != NULL)
		return;

	sigemptyset(&set);
	sigaddset(&set, SIGPIPE);
	pthread_sigmask(SIG_BLOCK, &set, NULL);

	if (sigpipe_key_valid)
		pthread_setspecific(sigpipe_key, (void *)1);
}

struct format_info {
	uint32_t spa_format;
	unsigned int bits;
	unsigned int bps;
	unsigned int sig;
	unsigned int le;
	unsigned int msb;
};

static const struct format_info format_table[] = {
	{ SPA_AUDIO_FORMAT_S16_LE,    16, 2, 1, 1, 1 },
	{ SPA_AUDIO_FORMAT_S16_BE,    16, 2, 1, 0, 1 },
	{ SPA_AUDIO_FORMAT_U16_LE,    16, 2, 0, 1, 1 },
	{ SPA_AUDIO_FORMAT_U16_BE,    16, 2, 0, 0, 1 },
	{ SPA_AUDIO_FORMAT_S24_LE,    24, 3, 1, 1, 1 },
	{ SPA_AUDIO_FORMAT_S24_BE,    24, 3, 1, 0, 1 },
	{ SPA_AUDIO_FORMAT_U24_LE,    24, 3, 0, 1, 1 },
	{ SPA_AUDIO_FORMAT_U24_BE,    24, 3, 0, 0, 1 },
	/* SPA's S24_32 holds the sample in the low 24 bits of a 32-bit
	 * container, i.e. it is LSB-justified, hence msb=0 */
	{ SPA_AUDIO_FORMAT_S24_32_LE, 24, 4, 1, 1, 0 },
	{ SPA_AUDIO_FORMAT_S24_32_BE, 24, 4, 1, 0, 0 },
	{ SPA_AUDIO_FORMAT_U24_32_LE, 24, 4, 0, 1, 0 },
	{ SPA_AUDIO_FORMAT_U24_32_BE, 24, 4, 0, 0, 0 },
	{ SPA_AUDIO_FORMAT_S32_LE,    32, 4, 1, 1, 1 },
	{ SPA_AUDIO_FORMAT_S32_BE,    32, 4, 1, 0, 1 },
	{ SPA_AUDIO_FORMAT_U32_LE,    32, 4, 0, 1, 1 },
	{ SPA_AUDIO_FORMAT_U32_BE,    32, 4, 0, 0, 1 },
	{ SPA_AUDIO_FORMAT_S8,         8, 1, 1, 1, 1 },
	{ SPA_AUDIO_FORMAT_U8,         8, 1, 0, 1, 1 },
};

static const struct format_info *find_format_info(uint32_t spa_format)
{
	SPA_FOR_EACH_ELEMENT_VAR(format_table, fi) {
		if (fi->spa_format == spa_format)
			return fi;
	}
	return NULL;
}

static const struct format_info *find_format_info_par(const struct sio_par *par)
{
	SPA_FOR_EACH_ELEMENT_VAR(format_table, fi) {
		if (fi->bits == par->bits &&
		    fi->bps == par->bps &&
		    fi->sig == par->sig &&
		    /* endianness only matters when bps > 1 */
		    (par->bps == 1 || fi->le == par->le) &&
		    /* msb only matters for padded containers */
		    (par->bits == par->bps * 8 || fi->msb == par->msb))
			return fi;
	}
	return NULL;
}

int spa_sndio_enum_format(struct sndio_state *state, uint32_t index,
		struct spa_pod **param, struct spa_pod_builder *b)
{
	struct spa_pod_frame f;

	switch (index) {
	case 0:
		spa_pod_builder_push_object(b, &f,
			SPA_TYPE_OBJECT_Format, SPA_PARAM_EnumFormat);
		spa_pod_builder_add(b,
			SPA_FORMAT_mediaType,    SPA_POD_Id(SPA_MEDIA_TYPE_audio),
			SPA_FORMAT_mediaSubtype, SPA_POD_Id(SPA_MEDIA_SUBTYPE_raw),
			0);
		if (state->props.format != 0) {
			spa_pod_builder_add(b,
				SPA_FORMAT_AUDIO_format, SPA_POD_Id(state->props.format),
				0);
		} else {
			spa_pod_builder_add(b,
				SPA_FORMAT_AUDIO_format, SPA_POD_CHOICE_ENUM_Id(6,
							SPA_AUDIO_FORMAT_S32,
							SPA_AUDIO_FORMAT_S32,
							SPA_AUDIO_FORMAT_S24_32,
							SPA_AUDIO_FORMAT_S24,
							SPA_AUDIO_FORMAT_S16,
							SPA_AUDIO_FORMAT_U8),
				0);
		}
		if (state->props.rate != 0) {
			spa_pod_builder_add(b,
				SPA_FORMAT_AUDIO_rate, SPA_POD_Int(state->props.rate),
				0);
		} else {
			spa_pod_builder_add(b,
				SPA_FORMAT_AUDIO_rate, SPA_POD_CHOICE_RANGE_Int(
					SPA_SNDIO_DEFAULT_RATE, 4000, 192000),
				0);
		}
		if (state->props.channels != 0) {
			spa_pod_builder_add(b,
				SPA_FORMAT_AUDIO_channels, SPA_POD_Int(state->props.channels),
				0);
			spa_pod_builder_prop(b, SPA_FORMAT_AUDIO_position, 0);
			spa_pod_builder_array(b, sizeof(uint32_t), SPA_TYPE_Id,
					state->props.channels, state->props.pos);
		} else {
			spa_pod_builder_add(b,
				SPA_FORMAT_AUDIO_channels, SPA_POD_CHOICE_RANGE_Int(
					SPA_SNDIO_DEFAULT_CHANNELS, 1, SPA_SNDIO_MAX_CHANNELS),
				0);
		}
		*param = spa_pod_builder_pop(b, &f);
		break;
	default:
		return 0;
	}
	return 1;
}

static void on_move(void *arg, int delta)
{
	struct sndio_state *state = arg;
	struct timespec ts;

	state->hw_position += delta;
	clock_gettime(CLOCK_MONOTONIC, &ts);
	state->hw_pos_nsec = SPA_TIMESPEC_TO_NSEC(&ts);
}

uint64_t spa_sndio_now(void)
{
	struct timespec ts;

	clock_gettime(CLOCK_MONOTONIC, &ts);
	return SPA_TIMESPEC_TO_NSEC(&ts);
}

uint32_t spa_sndio_playing(struct sndio_state *state)
{
	uint64_t frames = state->frame_size ?
		state->bytes_xfer / state->frame_size : 0;
	uint64_t played = state->hw_position;

	/* extrapolate the device position between onmove updates for a
	 * smooth delay estimate; the raw position only advances in whole
	 * rounds whenever the server messages are serviced */
	if (state->hw_pos_nsec != 0) {
		struct timespec ts;
		uint64_t now;

		clock_gettime(CLOCK_MONOTONIC, &ts);
		now = SPA_TIMESPEC_TO_NSEC(&ts);
		if (now > state->hw_pos_nsec)
			played += (now - state->hw_pos_nsec) *
				state->par.rate / SPA_NSEC_PER_SEC;
	}
	if (played > frames)
		played = frames;
	return frames - played;
}

/*
 * Process pending server messages; data loop only.
 *
 * In non-blocking mode all messages from the server (flow control
 * granting write budget, position updates driving sio_onmove()) are
 * only processed by sio_revents(3).  Without this, sio_write() never gets any budget
 * and always returns 0 (see sio_aucat_start()/sio_aucat_write()).
 */
int spa_sndio_service(struct sndio_state *state)
{
	struct pollfd pfd[16];
	int nfds, revents;

	if (!state->opened || state->eof)
		return 0;
	spa_sndio_block_sigpipe();
	if (sio_nfds(state->hdl) > (int)SPA_N_ELEMENTS(pfd))
		return -EIO;
	nfds = sio_pollfd(state->hdl, pfd, POLLIN | POLLOUT);
	if (nfds <= 0)
		return 0;
	if (poll(pfd, nfds, 0) < 0)
		return -errno;
	revents = sio_revents(state->hdl, pfd);
	if (revents & POLLHUP || sio_eof(state->hdl)) {
		if (!state->eof) {
			spa_log_warn(state->log, "%p: sndio connection lost, "
					"pausing until it returns", state);
			state->eof = true;
			state->reopen_countdown = 0;
		}
		/* not fatal: the node keeps running and the stream
		 * resumes when the connection can be reopened */
	}
	return 0;
}

static int spa_sndio_open(struct sndio_state *state, struct spa_audio_info *fmt)
{
	const struct format_info *fi;
	struct spa_audio_info_raw *raw = &fmt->info.raw;
	struct sio_par par;
	const char *device;
	unsigned int mode;

	if (state->opened)
		return 0;

	spa_sndio_block_sigpipe();
	if ((fi = find_format_info(raw->format)) == NULL) {
		spa_log_warn(state->log, "%p: unsupported format %d",
				state, raw->format);
		return -ENOTSUP;
	}

	device = state->props.device[0] != '\0' ?
			state->props.device : SIO_DEVANY;
	if (state->reopen_dev[0] != '\0')
		device = state->reopen_dev;
	mode = state->direction == SPA_DIRECTION_INPUT ? SIO_PLAY : SIO_REC;

	if ((state->hdl = sio_open(device, mode, 1)) == NULL) {
		if (state->reopen_dev[0] != '\0')
			spa_log_debug(state->log, "%p: reopen of '%s' failed, "
					"will retry", state, device);
		else
			spa_log_warn(state->log, "%p: failed to open '%s'",
					state, device);
		return -EIO;
	}

	sio_initpar(&par);
	par.bits = fi->bits;
	par.bps = fi->bps;
	par.sig = fi->sig;
	par.le = fi->le;
	par.msb = fi->msb;
	par.rate = raw->rate;
	if (mode == SIO_PLAY)
		par.pchan = raw->channels;
	else
		par.rchan = raw->channels;
	if (state->props.buffer_msec == 0)
		state->props.buffer_msec = SPA_SNDIO_DEFAULT_BUFFER_MSEC;
	par.appbufsz = raw->rate * state->props.buffer_msec / 1000;
	par.xrun = SIO_IGNORE;

	if (!sio_setpar(state->hdl, &par) || !sio_getpar(state->hdl, &par))
		goto error;

	/* accept only an exact match; the graph will try the next format */
	fi = find_format_info_par(&par);
	if (fi == NULL || fi->spa_format != raw->format ||
	    par.rate != raw->rate ||
	    (mode == SIO_PLAY ? par.pchan : par.rchan) != raw->channels) {
		spa_log_info(state->log,
			"%p: format not accepted by '%s' "
			"(bits:%u bps:%u sig:%u le:%u msb:%u rate:%u chan:%u)",
			state, device, par.bits, par.bps, par.sig, par.le,
			par.msb, par.rate,
			mode == SIO_PLAY ? par.pchan : par.rchan);
		goto error;
	}

	state->par = par;
	state->frame_size = par.bps * raw->channels;
	state->bytes_xfer = 0;
	state->hw_position = 0;
	state->hw_pos_nsec = 0;
	state->carry_len = 0;

	free(state->ring);
	state->ring = NULL;
	state->ring_size = 0;
	state->ring_head = state->ring_tail = state->ring_fill = 0;
	/* large enough for the device buffer plus one maximum-size graph
	 * cycle: playback queues the graph output here until the server
	 * grants budget, capture collects what the server delivered
	 * until there is a whole cycle to hand to the graph */
	state->ring_size = (par.bufsz + par.round +
			state->quantum_limit) * state->frame_size;
	state->ring = malloc(state->ring_size);
	if (state->ring == NULL) {
		spa_sndio_close(state);
		return -ENOMEM;
	}

	sio_onmove(state->hdl, on_move, state);

	state->opened = true;

	spa_log_info(state->log,
		"%p: opened '%s' %s bits:%u bps:%u sig:%u le:%u msb:%u "
		"rate:%u chan:%u bufsz:%u round:%u", state, device,
		mode == SIO_PLAY ? "play" : "rec", par.bits, par.bps,
		par.sig, par.le, par.msb, par.rate,
		mode == SIO_PLAY ? par.pchan : par.rchan,
		par.bufsz, par.round);

	return 0;
error:
	sio_close(state->hdl);
	state->hdl = NULL;
	return -EINVAL;
}

int spa_sndio_set_format(struct sndio_state *state, struct spa_audio_info *fmt)
{
	int res;

	state->reopen_dev[0] = '\0';
	spa_sndio_close(state);
	if ((res = spa_sndio_open(state, fmt)) < 0)
		return res;
	state->stored_fmt = *fmt;

	state->latency[state->direction] = SPA_LATENCY_INFO(
			state->direction,
			.min_rate = state->par.bufsz,
			.max_rate = state->par.bufsz);
	return 0;
}

int spa_sndio_close(struct sndio_state *state)
{
	if (!state->opened)
		return 0;
	spa_sndio_block_sigpipe();
	spa_sndio_stop(state);
	/* no handle while sndiod is away and a reopen is pending */
	if (state->hdl != NULL)
		sio_close(state->hdl);
	state->hdl = NULL;
	state->opened = false;
	state->eof = false;
	free(state->ring);
	state->ring = NULL;
	state->ring_size = 0;
	return 0;
}

int spa_sndio_start(struct sndio_state *state)
{
	if (!state->opened || state->active)
		return 0;
	spa_sndio_block_sigpipe();
	if (!sio_start(state->hdl))
		return -EIO;
	state->active = true;
	return 0;
}

int spa_sndio_stop(struct sndio_state *state)
{
	if (!state->opened || !state->active)
		return 0;
	spa_sndio_block_sigpipe();
	state->active = false;
	if (!state->eof && !sio_flush(state->hdl))
		state->eof = true;
	state->bytes_xfer = 0;
	state->hw_position = 0;
	state->hw_pos_nsec = 0;
	state->carry_len = 0;
	state->rate_base_nsec = 0;
	state->rate_locked = false;
	state->ring_head = state->ring_tail = state->ring_fill = 0;
	return 0;
}

/*
 * Measure the device clock against the system clock.  Every onmove
 * update timestamps the device position, so the ratio between the
 * frames the device reports and the frames the elapsed system time
 * predicts is a direct measurement of the device rate.  A windowed
 * estimate smoothed by an EMA is reported in rate_diff and used to
 * pace the graph timer (driver) or the adaptive resampler
 * (follower).  Unlike ALSA there is no feedback loop here: sndiod's
 * flow control already slaves the stream to the device, so the
 * remaining job is measurement, not control.
 */
double spa_sndio_update_rate(struct sndio_state *state, uint32_t delay)
{
	double inst;
	uint64_t dpos, dns;

	if (!state->active || state->eof || state->hw_pos_nsec == 0 ||
	    state->par.rate == 0)
		return state->rate_ratio != 0.0 ? state->rate_ratio : 1.0;

	if (state->rate_base_nsec == 0) {
		state->rate_base_nsec = state->hw_pos_nsec;
		state->rate_base_pos = state->hw_position;
		if (state->rate_ratio == 0.0)
			state->rate_ratio = 1.0;
		return state->rate_ratio;
	}

	dns = state->hw_pos_nsec - state->rate_base_nsec;
	if (!state->rate_locked) {
		/* the start burst delivers position updates with
		 * compressed timestamps; anchor after it settles */
		if (dns < 2 * SPA_NSEC_PER_SEC)
			return state->rate_ratio;
		state->rate_base_nsec = state->hw_pos_nsec;
		state->rate_base_pos = state->hw_position;
		state->rate_locked = true;
		return state->rate_ratio;
	}
	/* cumulative since the anchor: the position only advances in
	 * whole rounds, an error that decays as the window grows; wait
	 * until it is below 0.1% before steering with it, and keep the
	 * previous estimate (it survives restarts) until then */
	if (dns < 10 * SPA_NSEC_PER_SEC)
		return state->rate_ratio;

	dpos = state->hw_position - state->rate_base_pos;
	inst = (double)dpos * SPA_NSEC_PER_SEC / ((double)dns * state->par.rate);

	if (inst < 0.99 || inst > 1.01) {
		/* discontinuity (e.g. server xrun): re-anchor */
		spa_log_debug(state->log, "%p: rate discontinuity (inst:%f), "
				"re-anchoring", state, inst);
		state->rate_base_nsec = state->hw_pos_nsec;
		state->rate_base_pos = state->hw_position;
		return state->rate_ratio;
	}
	state->rate_ratio += (inst - state->rate_ratio) * 0.25;
	state->rate_ratio = SPA_CLAMPD(state->rate_ratio, 0.99, 1.01);

	if (state->hw_pos_nsec - state->log_base_nsec > 3 * SPA_NSEC_PER_SEC) {
		state->log_base_nsec = state->hw_pos_nsec;
		spa_log_debug(state->log, "%p: rate ratio:%f inst:%f delay:%u",
				state, state->rate_ratio, inst, delay);
	}
	return state->rate_ratio;
}

/*
 * Turn the measured rate into the pacing correction.  A gentle
 * proportional term on the buffer level keeps it bounded whatever
 * the residual error of the estimate: err is the excess of buffered
 * frames (positive slows the graph down), pulled back over a few
 * seconds.  Proportional only, so there is nothing to oscillate.
 */
double spa_sndio_pace(double ratio, int64_t err, uint32_t rate)
{
	double corr;

	if (rate == 0)
		return SPA_CLAMPD(ratio, 0.99, 1.01);
	corr = ratio * (1.0 - (double)err /
			((double)rate * SPA_SNDIO_PACE_SEC));
	return SPA_CLAMPD(corr, 0.99, 1.01);
}

/*
 * Follower rate matching, as in the ALSA plugin: when another clock
 * drives the graph, give the adapter's resampler the ratio between
 * our device and the driver.  There is nothing to match when the
 * driver is our own device clock, e.g. the sink following the
 * source of the same sndiod device.
 */
void spa_sndio_update_rate_match(struct sndio_state *state, uint32_t delay,
		int64_t err)
{
	double rel, drv;
	bool matching;

	if (state->rate_match == NULL || state->position == NULL)
		return;

	matching = state->following && !state->eof &&
		!spa_streq(state->position->clock.name, state->props.clock_name);
	if (matching) {
		drv = state->position->clock.rate_diff;
		rel = spa_sndio_update_rate(state, delay) /
			(drv > 0.0 ? drv : 1.0);
		rel = spa_sndio_pace(rel, err,
				state->position->clock.rate.denom);
		/* playback: more output when the device runs faster;
		 * capture: consume more input when it does */
		state->rate_match->rate =
			state->direction == SPA_DIRECTION_INPUT ? rel : 1.0 / rel;
	} else {
		state->rate_match->rate = 1.0;
	}
	SPA_FLAG_UPDATE(state->rate_match->flags,
			SPA_IO_RATE_MATCH_FLAG_ACTIVE, matching);
	if (matching != state->matching) {
		spa_log_info(state->log, "%p: driver clock:'%s' our clock:'%s' "
				"matching:%d", state, state->position->clock.name,
				state->props.clock_name, matching);
		state->matching = matching;
	}
}

/*
 * Transparent reopen: when sndiod went away mid-stream, keep the
 * graph running (the timer paces it) and try to come back about once
 * a second; on success the stream resumes with a gap instead of
 * erroring out.
 */
int spa_sndio_check_reopen(struct sndio_state *state, uint32_t duration,
		uint32_t rate)
{
	uint64_t cycles_per_sec;
	int res;

	if (!state->opened || !state->eof)
		return 0;

	cycles_per_sec = duration != 0 ? SPA_MAX(1u, rate / duration) : 100;
	if (state->reopen_countdown > 0) {
		state->reopen_countdown--;
		return 0;
	}
	state->reopen_countdown = cycles_per_sec;

	spa_sndio_block_sigpipe();
	if (state->hdl != NULL)
		sio_close(state->hdl);
	state->hdl = NULL;
	state->opened = false;
	state->eof = false;
	state->active = false;
	state->bytes_xfer = 0;
	state->carry_len = 0;
	state->ring_head = state->ring_tail = state->ring_fill = 0;

	spa_sndio_reconnect_name(state->props.device,
			state->direction == SPA_DIRECTION_INPUT ?
			"AUDIOPLAYDEVICE" : "AUDIORECDEVICE",
			state->reopen_dev, sizeof(state->reopen_dev));

	if ((res = spa_sndio_open(state, &state->stored_fmt)) < 0) {
		/* still away; stay in the gap */
		state->eof = true;
		state->opened = true;
		return res;
	}
	if ((res = spa_sndio_start(state)) < 0) {
		state->eof = true;
		return res;
	}
	state->rate_base_nsec = 0;
	state->rate_locked = false;
	spa_log_info(state->log, "%p: sndio device reopened, stream resumed",
			state);
	return 1;
}

int spa_sndio_init(struct sndio_state *state, const struct spa_dict *info,
		const struct spa_support *support, uint32_t n_support)
{
	uint32_t i;

	state->log = spa_support_find(support, n_support, SPA_TYPE_INTERFACE_Log);
	spa_log_topic_init(state->log, &sndio_log_topic);
	state->data_loop = spa_support_find(support, n_support, SPA_TYPE_INTERFACE_DataLoop);
	state->data_system = spa_support_find(support, n_support, SPA_TYPE_INTERFACE_DataSystem);

	if (state->data_loop == NULL) {
		spa_log_error(state->log, "a data_loop is needed");
		return -EINVAL;
	}
	if (state->data_system == NULL) {
		spa_log_error(state->log, "a data_system is needed");
		return -EINVAL;
	}

	state->quantum_limit = 8192;
	state->props.buffer_msec = SPA_SNDIO_DEFAULT_BUFFER_MSEC;

	for (i = 0; info && i < info->n_items; i++) {
		const char *k = info->items[i].key;
		const char *s = info->items[i].value;
		if (spa_streq(k, "clock.quantum-limit")) {
			spa_atou32(s, &state->quantum_limit, 0);
		} else if (spa_streq(k, "clock.name")) {
			spa_scnprintf(state->props.clock_name,
					sizeof(state->props.clock_name), "%s", s);
		} else if (spa_streq(k, SPA_KEY_API_SNDIO_PATH)) {
			spa_scnprintf(state->props.device,
					sizeof(state->props.device), "%s", s);
		} else if (spa_streq(k, "api.sndio.buffer-msec")) {
			spa_atou32(s, &state->props.buffer_msec, 0);
		} else if (spa_streq(k, SPA_KEY_AUDIO_FORMAT)) {
			state->props.format = spa_type_audio_format_from_short_name(s);
		} else if (spa_streq(k, SPA_KEY_AUDIO_RATE)) {
			spa_atou32(s, &state->props.rate, 0);
		} else if (spa_streq(k, SPA_KEY_AUDIO_CHANNELS)) {
			spa_atou32(s, &state->props.channels, 0);
		} else if (spa_streq(k, SPA_KEY_AUDIO_POSITION)) {
			spa_audio_parse_position_n(s, strlen(s), state->props.pos,
					SPA_N_ELEMENTS(state->props.pos),
					&state->props.channels);
		}
	}
	if (state->props.channels > SPA_SNDIO_MAX_CHANNELS)
		state->props.channels = SPA_SNDIO_MAX_CHANNELS;
	/* the stream is paced by the device clock: name it after the
	 * device, so that sink and source of one device are known to
	 * share it */
	if (state->props.clock_name[0] == '\0')
		spa_scnprintf(state->props.clock_name,
				sizeof(state->props.clock_name), "api.sndio.%s",
				state->props.device[0] != '\0' ?
				state->props.device : SIO_DEVANY);

	state->latency[SPA_DIRECTION_INPUT] =
		SPA_LATENCY_INFO(SPA_DIRECTION_INPUT);
	state->latency[SPA_DIRECTION_OUTPUT] =
		SPA_LATENCY_INFO(SPA_DIRECTION_OUTPUT);

	return 0;
}

int spa_sndio_clear(struct sndio_state *state)
{
	spa_sndio_close(state);
	return 0;
}
