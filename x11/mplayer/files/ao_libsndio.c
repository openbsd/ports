#include <sys/types.h>
#include <poll.h>
#include <errno.h>
#include <sndio.h>

#include "config.h"
#include "mp_msg.h"
#include "mixer.h"
#include "help_mp.h"

#include "libaf/af_format.h"

#include "audio_out.h"
#include "audio_out_internal.h"

static ao_info_t info = {
	"libsndio audio output",
	"libsndio",
	"Alexandre Ratchov <alex@caoua.org>",
	""
};

LIBAO_EXTERN(libsndio)

static struct sio_hdl *hdl = NULL;
static struct sio_par par;
static long long realpos = 0, playpos = 0;
#define SILENCE_NMAX 0x1000
static char silence[SILENCE_NMAX];

/*
 * misc parameters (volume, etc...)
 */
static int control(int cmd, void *arg)
{
	return CONTROL_FALSE;
}

/*
 * call-back invoked to notify of the hardware position
 */
static void movecb(void *addr, int delta)
{
	realpos += delta * (int)(par.bps * par.pchan);
}

/*
 * open device and setup parameters
 * return: 1 = success, 0 = failure
 */
static int init(int rate, int channels, int format, int flags)
{
	hdl = sio_open(NULL, SIO_PLAY, 0);
	if (hdl == NULL) {
		mp_msg(MSGT_AO, MSGL_ERR, "ao2: can't open libsndio\n");
		return 0;
	}

	sio_initpar(&par);
	switch (format) {
	case AF_FORMAT_U8:
		par.bits = 8;
		par.sig = 0;
		break;
	case AF_FORMAT_S8:
		par.bits = 8;
		par.sig = 1;
		break;
	case AF_FORMAT_U16_LE:
		par.bits = 16;
		par.sig = 0;
		par.le = 1;
		break;
	case AF_FORMAT_S16_LE:
		par.bits = 16;
		par.sig = 1;
		par.le = 1;
		break;
	case AF_FORMAT_U16_BE:
		par.bits = 16;
		par.sig = 0;
		par.le = 0;
		break;
	case AF_FORMAT_S16_BE:
		par.bits = 16;
		par.sig = 1;
		par.le = 0;
		break;
	default:
		mp_msg(MSGT_AO, MSGL_ERR, "ao2: unsupported format\n");
		return 0;
	}
	par.rate = rate;
	par.pchan = channels;
	par.bufsz = par.rate * 250 / 1000; /* 250ms buffer */
	if (!sio_setpar(hdl, &par)) {
		mp_msg(MSGT_AO, MSGL_ERR, "ao2: couldn't set params\n");
		return 0;
	}
	if (!sio_getpar(hdl, &par)) {
		mp_msg(MSGT_AO, MSGL_ERR, "ao2: couldn't get params\n");
		return 0;
	}
	if (par.bits == 8 && par.bps == 1) {
		format = par.sig ? AF_FORMAT_S8 : AF_FORMAT_U8;	
	} else if (par.bits == 16 && par.bps == 2) {
		format = par.sig ? 
		    (par.le ? AF_FORMAT_S16_LE : AF_FORMAT_S16_BE) :
		    (par.le ? AF_FORMAT_U16_LE : AF_FORMAT_U16_BE);
	} else {
		mp_msg(MSGT_AO, MSGL_ERR, "ao2: couldn't set format\n");
		return 0;
	}
	ao_data.samplerate = par.rate;
	ao_data.channels = par.pchan;
	ao_data.format = format;
	ao_data.bps = par.bps * par.pchan * par.rate;
	ao_data.buffersize = par.bufsz * par.bps * par.pchan;
	ao_data.outburst = par.round * par.bps * par.pchan;
	sio_onmove(hdl, movecb, NULL);
	realpos = playpos = 0;
	if (!sio_start(hdl)) {
		mp_msg(MSGT_AO, MSGL_ERR, "ao2: init: couldn't start\n");
	}
	return 1;
}

/*
 * close device
 */
static void uninit(int immed)
{
	if (hdl)
		sio_close(hdl);
}

/*
 * stop playing and empty buffers (for seeking/pause)
 */
static void reset(void) {
	if (!sio_stop(hdl)) {
		mp_msg(MSGT_AO, MSGL_ERR, "ao2: reset: couldn't stop\n");
	}
	realpos = playpos = 0;
	if (!sio_start(hdl)) {
		mp_msg(MSGT_AO, MSGL_ERR, "ao2: reset: couldn't start\n");
	}
}

/*
 * how many bytes can be played without blocking
 */
static int get_space(void)
{
	struct pollfd pfd;
	int bufused, space, revents, n;

	/*
	 * call poll() and sio_revents(), so the
	 * playpos and realpos counters are updated
	 */
	n = sio_pollfd(hdl, &pfd, POLLOUT);
	while (poll(&pfd, n, 0) < 0 && errno == EINTR)
		; /* nothing */
	revents = sio_revents(hdl, &pfd);
	bufused = (realpos < 0) ? playpos : playpos - realpos;
	space = par.bufsz * par.pchan * par.bps - bufused;
	return space;
}

/*
 * play given number of bytes until sio_write() blocks
 */
static int play(void *data, int len, int flags)
{
	int n;

	n = sio_write(hdl, data, len);
	playpos += n;
	return n;
}

/*
 * return: delay in seconds between first and last sample in buffer
 */
static float get_delay(void)
{
	int bufused;
	bufused = (realpos < 0) ? playpos : playpos - realpos;
	return (float)bufused / (par.bps * par.pchan * par.rate);
}

/*
 * stop playing, keep buffers (for pause)
 */
static void audio_pause(void)
{
	/* libsndio stops automatically if no data is available */
}

/*
 * resume playing, after audio_pause()
 */
static void audio_resume(void)
{
	struct pollfd pfd;
	int n, count, todo, revents;

	todo = par.bufsz * par.pchan * par.bps;

	/*
	 * libsndio starts automatically if enough data is available;
	 * however we want to start with buffers full, because video
	 * would accelerate during buffers are filled
	 */
	while (todo > 0) {
		count = todo;
		if (count > SILENCE_NMAX)
			count = SILENCE_NMAX;
		n = sio_write(hdl, silence, count);
		if (n == 0)
			break;
		todo -= n;
		realpos -= n;
	}
}
