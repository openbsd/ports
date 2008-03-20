/* $OpenBSD: openbsd.c,v 1.1.1.1 2008/03/20 18:24:42 jasper Exp $ */


/* $NetBSD: _cdio_netbsd.c,v 1.4 2005/05/31 17:05:36 drochner Exp $ */

/*
 * Copyright (c) 2003
 *      Matthias Drochner.  All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 * IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/*
 * XXX This is for NetBSD but uses "freebsd" function names to plug
 * nicely into the existing libcdio.
 */

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include <cdio/sector.h>
#include <cdio/util.h>
#include "cdio_assert.h"
#include "cdio_private.h"

#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/ioctl.h>
#include <sys/cdio.h>
#include <sys/scsiio.h>

#define DEFAULT_CDIO_DEVICE "/dev/rcd0c"

#define TOTAL_TRACKS (_obj->tochdr.ending_track \
		      - _obj->tochdr.starting_track + 1)
#define FIRST_TRACK_NUM (_obj->tochdr.starting_track)

typedef struct {
	generic_img_private_t gen; 

	bool toc_valid;
	struct ioc_toc_header tochdr;
	struct cd_toc_entry tocent[100];

	bool sessionformat_valid;
	int sessionformat[100]; /* format of the session the track is in */
} _img_private_t;

static driver_return_code_t
run_scsi_cmd_freebsd(void *p_user_data, unsigned int i_timeout_ms,
		     unsigned int i_cdb, const mmc_cdb_t *p_cdb, 
		     cdio_mmc_direction_t e_direction,
		     unsigned int i_buf, void *p_buf )
{
	const _img_private_t *_obj = p_user_data;
	scsireq_t req;

	memset(&req, 0, sizeof(req));
	memcpy(&req.cmd[0], p_cdb, i_cdb);
	req.cmdlen = i_cdb;
	req.datalen = i_buf;
	req.databuf = p_buf;
	req.timeout = i_timeout_ms;
	req.flags = e_direction == SCSI_MMC_DATA_READ ? SCCMD_READ : SCCMD_WRITE;

	if (ioctl(_obj->gen.fd, SCIOCCOMMAND, &req) < 0) {
		perror("SCIOCCOMMAND");
		return -1;
	}
	if (req.retsts != SCCMD_OK) {
		fprintf(stderr, "SCIOCCOMMAND cmd 0x%02x sts %d\n", req.cmd[0], req.retsts);
		return -1;
	}

	return 0;
}

static int
_cdio_read_audio_sectors(void *user_data, void *data, lsn_t lsn,
			unsigned int nblocks)
{
	scsireq_t req;
	_img_private_t *_obj = user_data;

	memset(&req, 0, sizeof(req));
	req.cmd[0] = 0xbe;
	req.cmd[1] = 0;
	req.cmd[2] = (lsn >> 24) & 0xff;
	req.cmd[3] = (lsn >> 16) & 0xff;
	req.cmd[4] = (lsn >> 8) & 0xff;
	req.cmd[5] = (lsn >> 0) & 0xff;
	req.cmd[6] = (nblocks >> 16) & 0xff;
	req.cmd[7] = (nblocks >> 8) & 0xff;
	req.cmd[8] = (nblocks >> 0) & 0xff;
	req.cmd[9] = 0x78;
	req.cmdlen = 10;

	req.datalen = nblocks * CDIO_CD_FRAMESIZE_RAW; 
	req.databuf = data;
	req.timeout = 10000;
	req.flags = SCCMD_READ;

	if (ioctl(_obj->gen.fd, SCIOCCOMMAND, &req) < 0) {
		perror("SCIOCCOMMAND");
		return 1;
	}
	if (req.retsts != SCCMD_OK) {
		fprintf(stderr, "SCIOCCOMMAND cmd 0xbe sts %d\n", req.retsts);
		return 1;
	}

	return 0;
}

static int
_cdio_read_mode2_sector(void *user_data, void *data, lsn_t lsn, 
			bool mode2_form2)
{
	scsireq_t req;
	_img_private_t *_obj = user_data;
	char buf[M2RAW_SECTOR_SIZE] = { 0, };

	memset(&req, 0, sizeof(req));
	req.cmd[0] = 0xbe;
	req.cmd[1] = 0;
	req.cmd[2] = (lsn >> 24) & 0xff;
	req.cmd[3] = (lsn >> 16) & 0xff;
	req.cmd[4] = (lsn >> 8) & 0xff;
	req.cmd[5] = (lsn >> 0) & 0xff;
	req.cmd[6] = 0;
	req.cmd[7] = 0;
	req.cmd[8] = 1;
	req.cmd[9] = 0x58; /* subheader + userdata + ECC */
	req.cmdlen = 10;

	req.datalen = M2RAW_SECTOR_SIZE; 
	req.databuf = buf;
	req.timeout = 10000;
	req.flags = SCCMD_READ;

	if (ioctl(_obj->gen.fd, SCIOCCOMMAND, &req) < 0) {
		perror("SCIOCCOMMAND");
		return 1;
	}
	if (req.retsts != SCCMD_OK) {
		fprintf(stderr, "SCIOCCOMMAND cmd %0xbe sts %d\n", req.retsts);
		return 1;
	}

	if (mode2_form2)
		memcpy(data, buf, M2RAW_SECTOR_SIZE);
	else
		memcpy(data, buf + CDIO_CD_SUBHEADER_SIZE, CDIO_CD_FRAMESIZE);

	return 0;
}

static int
_cdio_read_mode2_sectors(void *user_data, void *data, lsn_t lsn, 
			 bool mode2_form2, unsigned int nblocks)
{
	int i, res;
	char *buf = data;

	for (i = 0; i < nblocks; i++) {
		res = _cdio_read_mode2_sector(user_data, buf, lsn, mode2_form2);
		if (res)
			return res;

		buf += (mode2_form2 ? M2RAW_SECTOR_SIZE : CDIO_CD_FRAMESIZE);
		lsn++;
	}

	return 0;
}

static uint32_t 
_cdio_stat_size(void *user_data)
{
	_img_private_t *_obj = user_data;
	struct ioc_read_toc_entry req;
	struct cd_toc_entry tocent;

	req.address_format = CD_LBA_FORMAT;
	req.starting_track = 0xaa;
	req.data_len = sizeof(tocent);
	req.data = &tocent;

	if (ioctl(_obj->gen.fd, CDIOREADTOCENTRIES, &req) < 0) {
		perror("ioctl(CDIOREADTOCENTRY) leadout");
		exit(EXIT_FAILURE);
	}

	return (tocent.addr.lba);
}

static int
_cdio_set_arg(void *user_data, const char key[], const char value[])
{
	_img_private_t *_obj = user_data;

	if (!strcmp(key, "source")) {
		if (!value)
			return -2;

		free(_obj->gen.source_name);
		_obj->gen.source_name = strdup(value);
	} else if (!strcmp(key, "access-mode")) {
		if (strcmp(value, "READ_CD"))
			cdio_error("unknown access type: %s ignored.", value);
	} else 
		return -1;

	return 0;
}

static bool
_cdio_read_toc(_img_private_t *_obj) 
{
	int res;
	struct ioc_read_toc_entry req;

	res = ioctl(_obj->gen.fd, CDIOREADTOCHEADER, &_obj->tochdr);
	if (res < 0) {
		cdio_error("error in ioctl(CDIOREADTOCHEADER): %s\n",
			   strerror(errno));
		return false;
	}

	req.address_format = CD_MSF_FORMAT;
	req.starting_track = FIRST_TRACK_NUM;
	req.data_len = (TOTAL_TRACKS + 1) /* leadout! */
		* sizeof(struct cd_toc_entry); 
	req.data = _obj->tocent;

	res = ioctl(_obj->gen.fd, CDIOREADTOCENTRIES, &req);
	if (res < 0) {
		cdio_error("error in ioctl(CDROMREADTOCENTRIES): %s\n",
			   strerror(errno));
		return false;
	}

	_obj->toc_valid = 1;
	return true;
}

static bool
read_toc_freebsd (void *p_user_data) 
{

	return _cdio_read_toc(p_user_data);
}

static int
_cdio_read_discinfo(_img_private_t *_obj)
{
	scsireq_t req;
#define FULLTOCBUF (4 + 1000*11)
	unsigned char buf[FULLTOCBUF] = { 0, };
	int i, j;

	memset(&req, 0, sizeof(req));
	req.cmd[0] = 0x43; /* READ TOC/PMA/ATIP */
	req.cmd[1] = 0x02;
	req.cmd[2] = 0x02; /* full TOC */
	req.cmd[3] = 0;
	req.cmd[4] = 0;
	req.cmd[5] = 0;
	req.cmd[6] = 0;
	req.cmd[7] = FULLTOCBUF / 256;
	req.cmd[8] = FULLTOCBUF % 256;
	req.cmd[9] = 0;
	req.cmdlen = 10;

	req.datalen = FULLTOCBUF; 
	req.databuf = buf;
	req.timeout = 10000;
	req.flags = SCCMD_READ;

	if (ioctl(_obj->gen.fd, SCIOCCOMMAND, &req) < 0) {
		perror("SCIOCCOMMAND");
		return 1;
	}
	if (req.retsts != SCCMD_OK) {
		fprintf(stderr, "SCIOCCOMMAND cmd 0x43 sts %d\n", req.retsts);
		return 1;
	}
#if 1
	printf("discinfo:");
	for (i = 0; i < 4; i++)
		printf(" %02x", buf[i]);
	printf("\n");
	for (i = 0; i < buf[1] - 2; i++) {
		printf(" %02x", buf[i + 4]);
		if (!((i + 1) % 11))
			printf("\n");
	}
#endif

	for (i = 4; i < req.datalen_used; i += 11) {
		if (buf[i + 3] == 0xa0) { /* POINT */
			/* XXX: assume entry 0xa1 follows */
			for (j = buf[i + 8] - 1; j <= buf[i + 11 + 8] - 1; j++)
				_obj->sessionformat[j] = buf[i + 9];
		}
	}

	_obj->sessionformat_valid = true;
	return 0;
}

static int 
_cdio_eject_media(void *user_data) {

	_img_private_t *_obj = user_data;
	int fd, res, ret = 0;

	fd = open(_obj->gen.source_name, O_RDONLY|O_NONBLOCK);
	if (fd < 0)
		return 2;

	res = ioctl(fd, CDIOCALLOW);
	if (res < 0) {
		cdio_error("ioctl(fd, CDIOCALLOW) failed: %s\n",
			   strerror(errno));
		/* go on... */
	}
	res = ioctl(fd, CDIOCEJECT);
	if (res < 0) {
		cdio_error("ioctl(CDIOCEJECT) failed: %s\n",
			   strerror(errno));
		ret = 1;
	}

	return ret;
}

static const char *
_cdio_get_arg(void *user_data, const char key[])
{
	_img_private_t *_obj = user_data;

	if (!strcmp(key, "source")) {
		return _obj->gen.source_name;
	} else if (!strcmp(key, "access-mode")) {
		return "READ_CD";
	}

	return NULL;
}

static track_t
_cdio_get_first_track_num(void *user_data) 
{
	_img_private_t *_obj = user_data;
	int res;
  
	if (!_obj->toc_valid) {
		res = _cdio_read_toc(_obj);
		if (!res)
			return CDIO_INVALID_TRACK;
	}

	return FIRST_TRACK_NUM;
}

static track_t
_cdio_get_num_tracks(void *user_data) 
{
	_img_private_t *_obj = user_data;
	int res;
  
	if (!_obj->toc_valid) {
		res = _cdio_read_toc(_obj);
		if (!res)
			return CDIO_INVALID_TRACK;
	}

	return TOTAL_TRACKS;
}

static track_format_t
_cdio_get_track_format(void *user_data, track_t track_num) 
{
	_img_private_t *_obj = user_data;
	int res;
  
	if (!_obj->toc_valid) {
		res = _cdio_read_toc(_obj);
		if (!res)
			return CDIO_INVALID_TRACK;
	}

	if (track_num > TOTAL_TRACKS || track_num == 0)
		return TRACK_FORMAT_ERROR;

	if (_obj->tocent[track_num - 1].control & 0x04) {
		if (!_obj->sessionformat_valid) {
			res = _cdio_read_discinfo(_obj);
			if (res)
				return CDIO_INVALID_TRACK;
		}

		if (_obj->sessionformat[track_num - 1] == 0x10)
			return TRACK_FORMAT_CDI;
		else if (_obj->sessionformat[track_num - 1] == 0x20) 
			return TRACK_FORMAT_XA;
		else
			return TRACK_FORMAT_DATA;
	} else
		return TRACK_FORMAT_AUDIO;
}

static bool
_cdio_get_track_green(void *user_data, track_t track_num) 
{

	return (_cdio_get_track_format(user_data, track_num)
		== TRACK_FORMAT_XA);
}

static bool
_cdio_get_track_msf(void *user_data, track_t track_num, msf_t *msf)
{
	_img_private_t *_obj = user_data;
	int res;

	if (!msf)
		return false;

	if (!_obj->toc_valid) {
		res = _cdio_read_toc(_obj);
		if (!res)
			return CDIO_INVALID_TRACK;
	}

	if (track_num == CDIO_CDROM_LEADOUT_TRACK)
		track_num = TOTAL_TRACKS + 1;

	if (track_num > TOTAL_TRACKS + 1 || track_num == 0)
		return false;

	msf->m = cdio_to_bcd8(_obj->tocent[track_num - 1].addr.msf.minute);
	msf->s = cdio_to_bcd8(_obj->tocent[track_num - 1].addr.msf.second);
	msf->f = cdio_to_bcd8(_obj->tocent[track_num - 1].addr.msf.frame);

	return true;
}

static lsn_t
get_disc_last_lsn_openbsd(void *user_data) 
{
	msf_t msf;
  
	_cdio_get_track_msf(user_data, CDIO_CDROM_LEADOUT_TRACK, &msf);

	return (((msf.m * 60) + msf.s) * 75 + msf.f);
}


char **
cdio_get_devices_freebsd (void)
{

	return 0;
}

char *
cdio_get_default_device_freebsd()
{

	return strdup(DEFAULT_CDIO_DEVICE);
}

driver_return_code_t 
close_tray_freebsd (const char *psz_device)
{

	return DRIVER_OP_SUCCESS;
}

static cdio_funcs_t _funcs = {
	.eject_media        = _cdio_eject_media,
	.free               = cdio_generic_free,
	.get_arg            = _cdio_get_arg,
	.get_cdtext         = get_cdtext_generic,
	.get_default_device = cdio_get_default_device_freebsd,
	.get_devices        = cdio_get_devices_freebsd,
	.get_disc_last_lsn   = get_disc_last_lsn_openbsd,
	.get_discmode       = get_discmode_generic,
	.get_drive_cap      = get_drive_cap_mmc,
	.get_first_track_num= _cdio_get_first_track_num,
	.get_mcn            = get_mcn_mmc,
	.get_num_tracks     = _cdio_get_num_tracks,
	.get_track_format   = _cdio_get_track_format,
	.get_track_green    = _cdio_get_track_green,
	.get_track_lba      = NULL,
	.get_track_msf      = _cdio_get_track_msf,
	.lseek              = cdio_generic_lseek,
	.read               = cdio_generic_read,
	.read_audio_sectors = _cdio_read_audio_sectors,
	.read_data_sectors  = read_data_sectors_generic,
	.read_mode2_sector  = _cdio_read_mode2_sector,
	.read_mode2_sectors = _cdio_read_mode2_sectors,
	.read_toc           = read_toc_freebsd,
#if 1
	.run_mmc_cmd   = run_scsi_cmd_freebsd,
#endif
	.set_arg            = _cdio_set_arg,
#if 0
	.stat_size          = _cdio_stat_size
#endif
};

CdIo *
cdio_open_freebsd(const char *source_name)
{
	CdIo *ret;
	_img_private_t *_data;

	_data = calloc(1, sizeof(_img_private_t));
	_data->gen.init = false;
	_data->gen.fd = -1;
	_data->toc_valid = false;
	_data->sessionformat_valid = false;

	_cdio_set_arg(_data, "source",
		      (source_name ? source_name : DEFAULT_CDIO_DEVICE));

	if (source_name && !cdio_is_device_generic(source_name))
		return (NULL);

	ret = cdio_new(&_data->gen, &_funcs);
	if (!ret)
		return NULL;

	if (cdio_generic_init(_data, O_RDONLY)) {
		return ret;
	} else {
		cdio_generic_free(_data);
		return NULL;
	}
}

CdIo *
cdio_open_am_freebsd(const char *source_name, const char *am)
{

	return (cdio_open_freebsd(source_name));
}

bool
cdio_have_freebsd(void)
{

	return true;
}
