/* $OpenBSD: ao_sun.c,v 1.1 2001/03/17 23:45:47 naddy Exp $ */
/*
 *
 *  ao_sun.c    Solaris/NetBSD/OpenBSD
 *
 *      Original Copyright (C) Aaron Holtzman - May 1999
 *      Modifications Copyright (C) Stan Seibert - July 2000
 *      and Copyright (C) Christian Weisgerber - March 2001
 *
 */

#include <sys/types.h>
#include <sys/ioctl.h>
#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/audioio.h>

#ifndef AUDIO_ENCODING_SLINEAR
#define AUDIO_ENCODING_SLINEAR AUDIO_ENCODING_LINEAR	/* Solaris */
#endif

#include <ao/ao.h>

ao_info_t ao_sun_info = {
	"Sun audio driver output",
	"sun",
	"Christian Weisgerber <naddy@openbsd.org>",
	"Outputs to the sun audio system."
};

typedef struct ao_sun_internal_s {
	char *dev;
	int fd;
} ao_sun_internal_t;

void ao_sun_parse_options(ao_sun_internal_t *state, ao_option_t *options)
{
	state->dev = NULL;

	while (options) {
		if (!strcmp(options->key, "dev"))
			state->dev = strdup(options->value);
		options = options->next;
	}
}

ao_internal_t *plugin_open(uint_32 bits, uint_32 rate, uint_32 channels, ao_option_t *options)
{
	ao_sun_internal_t *state;
	audio_info_t info;

	state = malloc(sizeof(ao_sun_internal_t));

	if (state == NULL) {
		fprintf(stderr,"libao: Error allocating state memory: %s\n",
			strerror(errno));
		goto ERR;
	}

	ao_sun_parse_options(state, options);

	if (state->dev != NULL) {
		/* open the user-specified path */
		state->fd = open(state->dev, O_WRONLY);
		if (state->fd < 0) {
			fprintf(stderr, "libao: Error opening audio device %s: %s\n",
				state->dev, strerror(errno));
			goto ERR;
		}
	} else {
		/* default */
		state->dev = strdup("/dev/audio");
		state->fd = open(state->dev, O_WRONLY);
		if (state->fd < 0) {
			fprintf(stderr,
				"libao: Could not open default device %s: %s\n",
				state->dev, strerror(errno));
			goto ERR;
		}
	}

	AUDIO_INITINFO(&info);
#ifdef AUMODE_PLAY	/* NetBSD/OpenBSD */
	info.mode = AUMODE_PLAY;
#endif
	info.play.encoding = AUDIO_ENCODING_SLINEAR;
	info.play.precision = bits;
	info.play.sample_rate = rate;
	info.play.channels = channels;

 	if (ioctl(state->fd, AUDIO_SETINFO, &info) < 0) {
		fprintf(stderr,
			"libao: Cannot set device to %d bits, %d Hz, %d channels: %s\n",
			bits, rate, channels, strerror(errno));
		goto ERR;
	}

	return state;

ERR:
	if (state != NULL) {
		if (state->fd >= 0)
			close(state->fd);
		if (state->dev)
			free(state->dev);
		free(state);
	}
	return NULL;
}

void plugin_play(ao_internal_t *state, void *output_samples, uint_32 num_bytes)
{
	write(((ao_sun_internal_t *)state)->fd, output_samples, num_bytes);
}

void plugin_close(ao_internal_t *state)
{
	ao_sun_internal_t *s = (ao_sun_internal_t *)state;
	close(s->fd);
	free(s->dev);
	free(s);
}

int plugin_get_latency(ao_internal_t *state)
{
	/* dummy */
	return 0;
}

ao_info_t *plugin_get_driver_info(void)
{
	return &ao_sun_info;
}
