/*
 * Copyright (c) 2006-2008 Marcus Glocker <mglocker@openbsd.org>
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

#include <sys/types.h>
#include <sys/socket.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "libavutil/bswap.h"
#include "subopt-helper.h"
#include "libaf/af_format.h"
#include "audio_out.h"
#include "audio_out_internal.h"
#include "mp_msg.h"
#include "help_mp.h" 

static ao_info_t info = {
	"Apple AirPort Express audio output",
	"rtunes",
	"Marcus Glocker",
	""
};

LIBAO_EXTERN(rtunes)

extern int	vo_pts;
static char	*ao_device = NULL;
static char	*af = NULL;
int		ai_family = PF_UNSPEC;

/* to set/get/query special features/parameters */
static int
control(int cmd, void *arg)
{
	return (-1);
}

/*
 * print suboption usage
 */
static void
print_help(void)
{
	mp_msg (MSGT_AO, MSGL_FATAL,
		"\n-ao rtunes commandline help\n"
		"Example: mplayer -ao rtunes:device=10.0.0.1:af=inet\n"
		"  Sends audio output to an AirPort Express device "
		"at IPv4 address 10.0.0.1.\n"
		"\nOptions:\n"
		"  device=<address>\n"
		"    Selects the network address for the AirPort Express device.\n"
		"  af=<address family>\n"
		"    Selects the address family for 'device'.  choices are "
		" 'inet' and 'inet6'.  defaults to 'inet'.\n");
}

/*
 * open & setup audio device
 * return: 1 = success 0 = fail
 */
static int
init(int rate, int channels, int format, int flags)
{
	int	bits;

	opt_t subopts[] = {
	  { "device",       OPT_ARG_MSTRZ, &ao_device, NULL },
	  { "af",    OPT_ARG_MSTRZ, &ai_family, NULL },
	  { NULL }
	};
	/* set defaults */
	/*
	ao_device = strdup("192.168.1.23");
	*/

	if (subopt_parse(ao_subdevice, subopts) != 0) {
		print_help();
		return (0);
	}

	if (!ao_device) {
		print_help();
		return 0;
	}
	if (!af) {
		af = malloc(6);
		snprintf(af, 6, "inet");
	}
	if (strncmp(af, "inet6", 6) == 0)
		ai_family = PF_INET6;
	else if (strncmp(af, "inet", 6) == 0)
		ai_family = PF_INET;
	else {
		print_help();
		return 0;
	}

	/*
	 * bits is only equal to format if (format == 8) or (format == 16);
	 * this means that the following "if" is a kludge and should
	 * really be a switch to be correct in all cases
	 */
	bits = 8;
	switch (format) {
	case AF_FORMAT_S8:
		format = AF_FORMAT_U8;
	case AF_FORMAT_U8:
		break;
	default:
		format = AF_FORMAT_S16_LE;
		bits = 16;
		break;
	}

	ao_data.outburst = 16384;
	ao_data.buffersize = 2 * 16384;
	ao_data.channels = channels;
	ao_data.samplerate = rate;
	ao_data.format = format;
	ao_data.bps = channels * rate * (bits / 8);

	if (rtunes_init(ao_device) == -1)
		return (0);

	return (1);
}

/* close audio device */
static void
uninit(int immed)
{
	mp_msg(MSGT_AO, MSGL_INFO, "Closing rtunes stream, please wait ...");
	rtunes_close();
}

/* stop playing and empty buffers (for seeking/pause) */
static void
reset(void)
{

}

/* stop playing, keep buffers (for pause) */
static void
audio_pause(void)
{
    /* for now, just call reset() */
    reset();
}

/* resume playing, after audio_pause() */
static void
audio_resume(void)
{

}

/* return: how many bytes can be played without blocking */
static int
get_space(void)
{
	if (vo_pts)
		return ao_data.pts < vo_pts ? ao_data.outburst : 0;
	return (ao_data.outburst);
}

/*
 * plays 'len' bytes of 'data'
 * it should round it down to outburst*n
 * return: number of bytes played
 */
static int
play(void *data, int len, int flags)
{
	if (len == 0)
		return len;
	if (len > ao_data.outburst || !(flags & AOPLAY_FINAL_CHUNK)) {
		len /= ao_data.outburst;
		len *= ao_data.outburst;
	}

	rtunes_play(data, len);

	return (len);
}

/* return: delay in seconds between first and last sample in buffer */
static float
get_delay(void)
{
    return (0.0);
}
