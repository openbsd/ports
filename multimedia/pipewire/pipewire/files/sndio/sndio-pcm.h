/* Spa sndio support */
/* SPDX-FileCopyrightText: Copyright © 2026 Antoine Jacoutot <ajacoutot@openbsd.org> */
/* SPDX-License-Identifier: MIT */

#ifndef SPA_SNDIO_PCM_H
#define SPA_SNDIO_PCM_H

#include <stddef.h>
#include <stdbool.h>
#include <stdint.h>
#include <time.h>

#include <sndio.h>

#include <spa/support/plugin.h>
#include <spa/support/log.h>
#include <spa/support/loop.h>
#include <spa/support/system.h>
#include <spa/utils/list.h>
#include <spa/utils/keys.h>
#include <spa/utils/names.h>
#include <spa/utils/string.h>
#include <spa/utils/result.h>
#include <spa/node/node.h>
#include <spa/node/utils.h>
#include <spa/node/io.h>
#include <spa/node/keys.h>
#include <spa/monitor/device.h>
#include <spa/param/param.h>
#include <spa/param/latency-utils.h>
#include <spa/param/audio/format-utils.h>
#include <spa/param/audio/raw-json.h>
#include <spa/pod/filter.h>

#ifdef __cplusplus
extern "C" {
#endif

extern struct spa_log_topic sndio_log_topic;
#undef SPA_LOG_TOPIC_DEFAULT
#define SPA_LOG_TOPIC_DEFAULT &sndio_log_topic

#define SPA_SNDIO_MAX_BUFFERS	32
#define SPA_SNDIO_MAX_CHANNELS	16

#define SPA_SNDIO_DEFAULT_RATE		48000
#define SPA_SNDIO_DEFAULT_CHANNELS	2
/* device buffer target, in milliseconds */
#define SPA_SNDIO_DEFAULT_BUFFER_MSEC	50

struct sndio_props {
	char device[256];
	uint32_t format;
	uint32_t rate;
	uint32_t channels;
	uint32_t pos[SPA_SNDIO_MAX_CHANNELS];
	uint32_t buffer_msec;
	char clock_name[64];
	float volume;
	bool mute;
};

struct sndio_buffer {
	uint32_t id;
#define BUFFER_FLAG_QUEUED	(1<<0)
	uint32_t flags;
	struct spa_buffer *buf;
	struct spa_meta_header *h;
	struct spa_list link;
};

struct sndio_state {
	struct spa_handle handle;
	struct spa_node node;

	struct spa_log *log;
	struct spa_loop *data_loop;
	struct spa_system *data_system;
	struct spa_loop *main_loop;

	/* SPA_DIRECTION_INPUT: sink, SPA_DIRECTION_OUTPUT: source */
	enum spa_direction direction;
	uint32_t quantum_limit;

	struct sndio_props props;

	uint64_t info_all;
	struct spa_node_info info;
#define NODE_PropInfo		0
#define NODE_Props		1
#define NODE_IO			2
#define N_NODE_PARAMS		3
	struct spa_param_info params[N_NODE_PARAMS];

	struct spa_io_clock *clock;
	struct spa_io_position *position;

	struct spa_hook_list hooks;
	struct spa_callbacks callbacks;

	/* single port */
	uint64_t port_info_all;
	struct spa_port_info port_info;
#define PORT_EnumFormat		0
#define PORT_Meta		1
#define PORT_IO			2
#define PORT_Format		3
#define PORT_Buffers		4
#define PORT_Latency		5
#define N_PORT_PARAMS		6
	struct spa_param_info port_params[N_PORT_PARAMS];
	struct spa_io_buffers *io;
	struct spa_latency_info latency[2];

	bool have_format;
	struct spa_audio_info current_format;
	uint32_t frame_size;

	struct sndio_buffer buffers[SPA_SNDIO_MAX_BUFFERS];
	uint32_t n_buffers;
	/* sink: buffers queued for playback; source: buffers to fill */
	struct spa_list ready;
	/* sink: bytes of the head "ready" buffer already written;
	 * source: bytes read into the head "ready" buffer so far */
	uint32_t ready_offset;

	struct sio_hdl *hdl;
	struct sio_par par;
	unsigned int opened:1;
	unsigned int active:1;		/* sio_start()ed */
	unsigned int eof:1;		/* device error, hdl unusable */
	unsigned int started:1;		/* node Start command */
	unsigned int following:1;

	uint64_t bytes_xfer;		/* bytes written/read so far */
	uint64_t hw_position;		/* device position, from sio_onmove() */
	uint64_t hw_pos_nsec;		/* monotonic time of the last onmove */
	/* partial frame remainder between reads */
	uint8_t carry[64];
	uint32_t carry_len;
	/* play: ring buffer between process() and the device, so that
	 * graph buffers are consumed immediately and never held while
	 * the producer may recycle them */
	uint8_t *ring;
	uint32_t ring_size;		/* bytes */
	uint32_t ring_head;		/* write index, bytes */
	uint32_t ring_tail;		/* read index, bytes */
	uint32_t ring_fill;		/* bytes queued */
	unsigned int have_volume:1;	/* device has a volume knob */
	unsigned int hw_volume;		/* last known knob position */
	unsigned int req_volume;	/* last knob position we requested */

	struct spa_source timer_source;
	struct itimerspec timerspec;
	uint64_t next_time;
};

int spa_sndio_init(struct sndio_state *state, const struct spa_dict *info,
		const struct spa_support *support, uint32_t n_support);
int spa_sndio_clear(struct sndio_state *state);

int spa_sndio_enum_format(struct sndio_state *state, uint32_t index,
		struct spa_pod **param, struct spa_pod_builder *b);
int spa_sndio_set_format(struct sndio_state *state, struct spa_audio_info *fmt);
int spa_sndio_close(struct sndio_state *state);
int spa_sndio_start(struct sndio_state *state);
int spa_sndio_stop(struct sndio_state *state);

/* only valid from the data loop */
int spa_sndio_service(struct sndio_state *state);
int spa_sndio_set_volume(struct sndio_state *state, float volume, bool mute);
uint32_t spa_sndio_playing(struct sndio_state *state);

#ifdef __cplusplus
} /* extern "C" */
#endif

#endif /* SPA_SNDIO_PCM_H */
