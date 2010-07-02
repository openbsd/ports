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


/* sndio backend for DirectAudio */

#include <stdlib.h>
#include <poll.h>
#include <sndio.h>

#include "DirectAudio.h"

#if USE_DAUDIO == TRUE

struct sndio_data {
	struct sio_hdl *hdl;
	struct sio_par par;
	int mode;
	long long realpos;
	long long softpos;
};

static void
sndio_movecb(void *arg, int delta)
{
	struct sndio_data *d = arg;
	d->realpos += delta;
}

static int
sndio_check_handle(struct sndio_data *d, int isSource)
{
	if (!d || !d->hdl ||
	    (isSource ? d->mode != SIO_PLAY : d->mode != SIO_REC))
		return 0;

	return 1;
}

INT32
DAUDIO_GetDirectAudioDeviceCount()
{
	/* keep it simple for now */
	return 1;
}

INT32
DAUDIO_GetDirectAudioDeviceDescription(INT32 mixerIndex,
    DirectAudioDeviceDescription* description)
{
	if (mixerIndex != 0) {
		printf("invalid sndio mixerIndex\n");
		return FALSE;
	}

	/* one device for now */
	description->deviceID = 0;

	/* number of simultaneous connections: 1 for hardware, -1 (inf)
	 * for aucat.  no way to know the difference.
	 */
	description->maxSimulLines = -1;

	strlcpy(description->name, "sndio device", DAUDIO_STRING_LENGTH);
	strlcpy(description->vendor, "OpenBSD", DAUDIO_STRING_LENGTH);
	strlcpy(description->version, "1", DAUDIO_STRING_LENGTH);
	strlcpy(description->description, "OpenBSD Audio", DAUDIO_STRING_LENGTH);

	return TRUE;
}

void
DAUDIO_GetFormats(INT32 mixerIndex, INT32 deviceID, int isSource,
    void* creator)
{
	struct sio_hdl *hdl;
	struct sio_cap cap;
	int i, j, k;
	unsigned int n;

	hdl = sio_open(NULL, isSource ? SIO_PLAY : SIO_REC, 0);
	if (hdl == NULL) {
		printf("could not get sndio handle to probe formats");
		return;
	}

	if (!sio_getcap(hdl, &cap)) {
		printf("sio_getcap failed\n");
		return;
	}

	for (n = 0; n < cap.nconf; n++) {
	    for (i = 0; i < SIO_NENC; i++) {
	        if (cap.confs[n].enc & (1 << i)) {
	            for (j = 0; j < SIO_NCHAN; j++) {
	                if ((isSource ?
			  cap.confs[n].pchan : cap.confs[n].rchan) & (1 << j)) {
	                    for (k = 0; k < SIO_NRATE; k++) {
	                        if (cap.confs[n].rate & (1 << k)) {
	                            DAUDIO_AddAudioFormat(creator,
				      cap.enc[i].bits,
	                              0, /* cap.enc[i].bps * (isSource ? cap.pchan[j] : cap.rchan[j]) */
	                              (isSource ? cap.pchan[j] : cap.rchan[j]),
	                              cap.rate[k],
	                              DAUDIO_PCM,
				      cap.enc[i].sig,
				      !cap.enc[i].le);
	                        }
	                    }
	                }
	            }
	        }
	    }
	}

	sio_close(hdl);
}

void*
DAUDIO_Open(INT32 mixerIndex, INT32 deviceID, int isSource, int encoding,
    float sampleRate, int sampleSizeInBits, int frameSize, int channels, 
    int isSigned, int isBigEndian, int bufferSizeInBytes)
{
	struct sndio_data *d;
	struct sio_par gpar;

	if (encoding != DAUDIO_PCM) {
		printf("invalid encoding for sndio\n");
		return NULL;
	}

	if (mixerIndex != 0 || deviceID != 0) {
		printf("invalid device for sndio\n");
		return NULL;
	}

	d = malloc(sizeof(struct sndio_data));
	if (d == NULL) {
		printf("could not alloc sndio_data structure\n");
		return NULL;
	}

	d->mode = isSource ? SIO_PLAY : SIO_REC;

	d->hdl = NULL;
	d->hdl = sio_open(NULL, d->mode, 0);
	if (d->hdl == NULL) {
		printf("could not open sndio device\n");
		goto bad;
	}

	sio_initpar(&d->par);
	if (d->mode == SIO_PLAY)
		d->par.pchan = channels;
	else
		d->par.rchan = channels;
	d->par.rate = sampleRate;
	d->par.bits = sampleSizeInBits;
	d->par.sig = isSigned;
	d->par.le = !isBigEndian;
	d->par.appbufsz = bufferSizeInBytes / SIO_BPS(d->par.bits) /
	    ((d->mode == SIO_PLAY) ? d->par.pchan : d->par.rchan);

	if (!sio_setpar(d->hdl, &d->par)) {
		printf("could not set sndio params\n");
		goto bad;
	}
	if (!sio_getpar(d->hdl, &gpar)) {
		printf("could not get sndio params\n");
		goto bad;
	}

	if (d->par.rate != gpar.rate ||
	    d->par.bits != gpar.bits ||
	    d->par.sig != gpar.sig ||
	    d->par.le != gpar.le ||
	    ((d->mode == SIO_PLAY) ?
	      d->par.pchan != gpar.pchan : d->par.rchan != gpar.rchan)) {
		printf("could not set sndio params as desired\n");
		goto bad;
	}
	d->par.appbufsz = gpar.appbufsz;

	d->realpos = d->softpos = 0;
	sio_onmove(d->hdl, sndio_movecb, d);

	return (void *)d;
bad:
	if (d) {
		if (d->hdl)
			sio_close(d->hdl);
		free(d);
	}
	return NULL;
}

int
DAUDIO_Start(void *id, int isSource)
{
	struct sndio_data *d = id;

	if (!sndio_check_handle(d, isSource)) {
		printf("sndio handle error: DAUDIO_Start\n");
		return FALSE;
	}

	if (!sio_start(d->hdl)) {
		printf("could not start sndio\n");
		return FALSE;
	}

	return TRUE;
}

int
DAUDIO_Stop(void *id, int isSource)
{
	struct sndio_data *d = id;

	if (!sndio_check_handle(d, isSource)) {
		printf("sndio handle error: DAUDIO_Stop\n");
		return FALSE;
	}

	if (!sio_stop(d->hdl)) {
		printf("could not stop sndio\n");
		return FALSE;
	}

	return TRUE;
}

void
DAUDIO_Close(void *id, int isSource)
{
	struct sndio_data *d = id;

	if (!sndio_check_handle(d, isSource)) {
		printf("sndio handle error: DAUDIO_Close\n");
		return;
	}

	sio_close(d->hdl);
	free(d);
	d = NULL;
}

int
DAUDIO_Write(void *id, char* data, int byteSize)
{
	struct sndio_data *d = id;
	int ret, done;

	if (!sndio_check_handle(d, 1)) {
		printf("sndio handle error: DAUDIO_Write\n");
		return -1;
	}

	done = 0;
	while (byteSize > 0) {
		ret = sio_write(d->hdl, data + done, byteSize);
		if (ret == 0) {
			printf("sndio write error\n");
			return -1;
		}
		done += ret;
		byteSize -= ret;
	}
	d->softpos += done / (d->par.bps * d->par.pchan);

	return done;
}

int
DAUDIO_Read(void *id, char* data, int byteSize)
{
	struct sndio_data *d = id;
	int ret, done;

	if (!sndio_check_handle(d, 0)) {
		printf("sndio handle error: DAUDIO_Read\n");
		return -1;
	}

	done = 0;
	while (byteSize > 0) {
		ret = sio_read(d->hdl, data + done, byteSize);
		if (ret == 0) {
			printf("sndio read error\n");
			return -1;
		}
		done += ret;
		byteSize -= ret;
	}
	d->softpos += done / (d->par.bps * d->par.rchan);

	return done;
}

int
DAUDIO_GetBufferSize(void *id, int isSource)
{
	struct sndio_data *d = id;

	if (!sndio_check_handle(d, isSource)) {
		printf("sndio handle error: DAUDIO_GetBufferSize\n");
		return 0;
	}

	return (d->par.appbufsz * d->par.bps *
	    ((d->mode == SIO_PLAY) ? d->par.pchan : d->par.rchan));
}

int
DAUDIO_StillDraining(void *id, int isSource)
{
	struct sndio_data *d = id;
	struct pollfd pfd;
	nfds_t nfds;

	if (!sndio_check_handle(d, isSource)) {
		printf("sndio handle error: DAUDIO_StillDraining\n");
		return FALSE;
	}

	/* make sure counters are up-to-date */
	nfds = sio_pollfd(d->hdl, &pfd,
	    (d->mode == SIO_PLAY) ? POLLOUT : POLLIN);
	poll(&pfd, nfds, 0);
	sio_revents(d->hdl, &pfd);

	if (d->mode == SIO_PLAY) {
		if (d->softpos - d->realpos > 0)
			return TRUE;
		else
			return FALSE;
	} else {
		/* what does it mean to drain recording? */
#if 0
		if (d->realpos - d->softpos > 0)
			return TRUE;
		else
			return FALSE;
#else
		return FALSE;
#endif
	}
}

int
DAUDIO_Flush(void *id, int isSource)
{
	struct sndio_data *d = id;
	struct pollfd pfd;
	nfds_t nfds;

	if (!sndio_check_handle(d, isSource)) {
		printf("sndio handle error: DAUDIO_StillDraining\n");
		return FALSE;
	}

	/* how do you flush recording? */
	if (d->mode == SIO_REC)
		return TRUE;

#if 0
	/* probably unnecessary busy work */
	while (d->softpos > d->realpos) {
		nfds = sio_pollfd(d->hdl, &pfd, POLLOUT);
		/* wait a little bit */
		poll(&pfd, nfds, 10);
		sio_revents(d->hdl, &pfd);
	}
#endif

	return TRUE;
}

int
DAUDIO_GetAvailable(void *id, int isSource)
{
	struct sndio_data *d = id;
	struct pollfd pfd;
	nfds_t nfds;
	int avail;

	if (!sndio_check_handle(d, isSource)) {
		printf("sndio handle error: DAUDIO_GetAvailable\n");
		return 0;
	}

	nfds = sio_pollfd(d->hdl, &pfd,
	    (d->mode == SIO_PLAY) ? POLLOUT : POLLIN);
	poll(&pfd, nfds, 0);
	sio_revents(d->hdl, &pfd);

	avail = 0;
	if (d->mode == SIO_PLAY)
		avail = d->par.appbufsz - (d->softpos - d->realpos);
	else
		avail = d->realpos - d->softpos;
	if (avail < 0)
		avail = 0;
	else if (avail > d->par.appbufsz)
		avail = d->par.appbufsz;

	return (avail * d->par.bps *
	    (d->mode == SIO_PLAY ? d->par.pchan : d->par.rchan));
}

INT64
DAUDIO_GetBytePosition(void *id, int isSource, INT64 javaBytePos)
{
	struct sndio_data *d = id;
	struct pollfd pfd;
	nfds_t nfds;
	long long pos;

	if (!sndio_check_handle(d, isSource)) {
		printf("sndio handle error: DAUDIO_GetBytePosition\n");
		return 0;
	}

	nfds = sio_pollfd(d->hdl, &pfd,
	    (d->mode == SIO_PLAY) ? POLLOUT : POLLIN);
	poll(&pfd, nfds, 0);
	sio_revents(d->hdl, &pfd);

	pos = d->realpos;
	if (pos > d->par.appbufsz)
		pos = d->par.appbufsz;
	else if (pos < 0)
		pos = 0;

	return (pos * d->par.bps *
	    ((d->mode == SIO_PLAY) ? d->par.pchan : d->par.rchan));
}

void
DAUDIO_SetBytePosition(void *id, int isSource, INT64 javaBytePos)
{
	struct sndio_data *d = id;
	INT64 pos;
	int diff;

	if (!sndio_check_handle(d, isSource)) {
		printf("sndio handle error: DAUDIO_SetBytePosition\n");
		return;
	}

	pos = DAUDIO_GetBytePosition(id, isSource, 0);
	diff = (javaBytePos - pos) / d->par.bps /
	    ((d->mode == SIO_PLAY) ? d->par.pchan : d->par.rchan);
	d->realpos += diff;
	d->softpos += diff;
}

int
DAUDIO_RequiresServicing(void *id, int isSource)
{
	return FALSE;
}

void
DAUDIO_Service(void *id, int isSource)
{
}

#endif	/* USE_DAUDIO */
