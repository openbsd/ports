/*	$OpenBSD: openbsd.c,v 1.3 2008/05/01 09:05:12 fgsch Exp $	*/
/*	$NetBSD: _cdio_netbsd.c,v 1.4 2005/05/31 17:05:36 drochner Exp $	*/

/*
 * Copyright (c) 2008 Federico G. Schwindt
 * Copyright (c) 2003 Matthias Drochner
 * All rights reserved.
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

typedef struct {
	generic_img_private_t	gen;

	struct ioc_toc_header	tochdr;
	struct cd_toc_entry	tocent[CDIO_CD_MAX_TRACKS + 1];
} _img_private_t;

static driver_return_code_t
run_mmc_cmd_openbsd(void *p_user_data, unsigned int i_timeout_ms,
    unsigned int i_cdb, const mmc_cdb_t *p_cdb,
    cdio_mmc_direction_t e_direction, unsigned int i_buf, void *p_buf)
{
	const _img_private_t *p_env = p_user_data;
	scsireq_t req;

	memset(&req, 0, sizeof(req));
	memcpy(&req.cmd[0], p_cdb, i_cdb);
	req.cmdlen = i_cdb;
	req.datalen = i_buf;
	req.databuf = p_buf;
	req.timeout = i_timeout_ms;
	req.flags = e_direction ==
	    SCSI_MMC_DATA_READ ? SCCMD_READ : SCCMD_WRITE;

	if (ioctl(p_env->gen.fd, SCIOCCOMMAND, &req) < 0) {
		cdio_info("ioctl SCIOCCOMMAND failed: %s\n", strerror(errno));
		return (DRIVER_OP_ERROR);
	}

	if (req.retsts != SCCMD_OK) {
		cdio_info("unexpected status for SCIOCCOMMAND %#x: %#x\n",
		    req.cmd[0], req.retsts);
		return (DRIVER_OP_ERROR);
	}

	return (DRIVER_OP_SUCCESS);
}

static driver_return_code_t
audio_get_volume_openbsd(void *p_user_data, cdio_audio_volume_t *p_volume)
{
	const _img_private_t *p_env = p_user_data;
	return (ioctl(p_env->gen.fd, CDIOCGETVOL, p_volume));
}

static driver_return_code_t
audio_pause_openbsd(void *p_user_data)
{
	const _img_private_t *p_env = p_user_data;
	return (ioctl(p_env->gen.fd, CDIOCPAUSE));
}

static driver_return_code_t
audio_play_msf_openbsd(void *p_user_data, msf_t *p_start_msf, msf_t *p_end_msf)
{
	const _img_private_t *p_env = p_user_data;
	struct ioc_play_msf a;

	a.start_m = cdio_from_bcd8(p_start_msf->m);
	a.start_s = cdio_from_bcd8(p_start_msf->s);
	a.start_f = cdio_from_bcd8(p_start_msf->f);
	a.end_m = cdio_from_bcd8(p_end_msf->m);
	a.end_s = cdio_from_bcd8(p_end_msf->s);
	a.end_f = cdio_from_bcd8(p_end_msf->f);

	return (ioctl(p_env->gen.fd, CDIOCPLAYMSF, (char *)&a));
}

#if !USE_MMC_SUBCHANNEL
static driver_return_code_t
audio_read_subchannel_openbsd(void *p_user_data, cdio_subchannel_t *subchannel)
{
	const _img_private_t *p_env = p_user_data;
	struct ioc_read_subchannel s;
	struct cd_sub_channel_info data;

	bzero(&s, sizeof(s));
	s.data = &data;
	s.data_len = sizeof(data);
	s.address_format = CD_MSF_FORMAT;
	s.data_format = CD_CURRENT_POSITION;

	if (ioctl(p_env->gen.fd, CDIOCREADSUBCHANNEL, &s) != -1) {
		subchannel->control = s.data->what.position.control;
		subchannel->track = s.data->what.position.track_number;
		subchannel->index = s.data->what.position.index_number;

		subchannel->abs_addr.m =
		    cdio_to_bcd8(s.data->what.position.absaddr.msf.minute);
		subchannel->abs_addr.s =
		    cdio_to_bcd8(s.data->what.position.absaddr.msf.second);
		subchannel->abs_addr.f =
		    cdio_to_bcd8(s.data->what.position.absaddr.msf.frame);
		subchannel->rel_addr.m =
		    cdio_to_bcd8(s.data->what.position.reladdr.msf.minute);
		subchannel->rel_addr.s =
		    cdio_to_bcd8(s.data->what.position.reladdr.msf.second);
		subchannel->rel_addr.f =
		    cdio_to_bcd8(s.data->what.position.reladdr.msf.frame);
		subchannel->audio_status = s.data->header.audio_status;

		return (DRIVER_OP_SUCCESS);
	} else {
		cdio_info("ioctl CDIOCREADSUBCHANNEL failed: %s\n",
		    strerror(errno));
		return (DRIVER_OP_ERROR);
	}
}
#endif

static driver_return_code_t
audio_resume_openbsd(void *p_user_data)
{
	const _img_private_t *p_env = p_user_data;
	return (ioctl(p_env->gen.fd, CDIOCRESUME));
}

static driver_return_code_t
audio_set_volume_openbsd(void *p_user_data, cdio_audio_volume_t *p_volume)
{
	const _img_private_t *p_env = p_user_data;
	return (ioctl(p_env->gen.fd, CDIOCSETVOL, p_volume));
}

static driver_return_code_t
audio_stop_openbsd(void *p_user_data)
{
	const _img_private_t *p_env = p_user_data;
	return (ioctl(p_env->gen.fd, CDIOCSTOP));
}

static driver_return_code_t
eject_media_openbsd(void *p_user_data)
{
	_img_private_t *p_env = p_user_data;
	driver_return_code_t ret = DRIVER_OP_SUCCESS;
	bool was_open = false;

	if (p_env->gen.fd == -1)
		p_env->gen.fd = open(p_env->gen.source_name,
		    O_RDONLY|O_NONBLOCK, 0);
	else
		was_open = true;

	if (p_env->gen.fd == -1)
		return (DRIVER_OP_ERROR);

	if (ioctl(p_env->gen.fd, CDIOCALLOW) == -1)
		cdio_info("ioctl CDIOCALLOW failed: %s\n", strerror(errno));

	if (ioctl(p_env->gen.fd, CDIOCEJECT) == -1) {
		cdio_info("ioctl CDIOCEJECT failed: %s\n", strerror(errno));
		ret = DRIVER_OP_ERROR;
	}

	if (!was_open) {
		close(p_env->gen.fd);
		p_env->gen.fd = -1;
	}

	return (ret);
}

static const char *
get_arg_openbsd(void *p_user_data, const char key[])
{
	_img_private_t *p_env = p_user_data;

	if (!strcmp(key, "source")) {
		return (p_env->gen.source_name);
	} else if (!strcmp(key, "access-mode")) {
		return ("READ_CD");
	}

	return (NULL);
}

static bool
read_toc_openbsd(void *p_user_data)
{
	_img_private_t *p_env = p_user_data;
	struct ioc_read_toc_entry req;

	if (ioctl(p_env->gen.fd, CDIOREADTOCHEADER, &p_env->tochdr) == -1) {
		cdio_info("error in ioctl CDIOREADTOCHEADER: %s\n",
		    strerror(errno));
		return (false);
	}

	p_env->gen.i_first_track = p_env->tochdr.starting_track;
	p_env->gen.i_tracks = (p_env->tochdr.ending_track -
	    p_env->tochdr.starting_track) + 1;

	req.address_format = CD_LBA_FORMAT;
	req.starting_track = p_env->gen.i_first_track;
	req.data_len = sizeof(p_env->tocent);
	req.data = p_env->tocent;

	if (ioctl(p_env->gen.fd, CDIOREADTOCENTRIES, &req) == -1) {
		cdio_info("error in ioctl CDIOREADTOCENTRIES: %s\n",
		    strerror(errno));
		return (false);
	}

	p_env->gen.toc_init = true;
	return (true);
}

static lba_t
get_track_lba_openbsd(void *p_user_data, track_t i_track)
{
	_img_private_t *p_env = p_user_data;

	if (!p_env->gen.toc_init)
		read_toc_openbsd(p_env);

	if (i_track == CDIO_CDROM_LEADOUT_TRACK)
		i_track = p_env->gen.i_first_track + p_env->gen.i_tracks;

	if (!p_env->gen.toc_init ||
	    i_track > (p_env->gen.i_first_track + p_env->gen.i_tracks) ||
	    i_track < p_env->gen.i_first_track)
		return (CDIO_INVALID_LBA);

	return (p_env->tocent[i_track - p_env->gen.i_first_track].addr.lba +
	    CDIO_PREGAP_SECTORS);
}

static lsn_t
get_disc_last_lsn_openbsd(void *user_data)
{
	return (get_track_lba_openbsd(user_data, CDIO_CDROM_LEADOUT_TRACK));
}

static driver_return_code_t
get_last_session_openbsd(void *p_user_data, lsn_t *i_last_session)
{
	const _img_private_t *p_env = p_user_data;
	int addr;
	
	if (ioctl(p_env->gen.fd, CDIOREADMSADDR, &addr) == 0) {
		*i_last_session = addr;
		return (DRIVER_OP_SUCCESS);
	} else {
		cdio_info("ioctl CDIOREADMSADDR failed: %s\n",
		    strerror(errno));
		return (DRIVER_OP_ERROR);
	}
}
static track_format_t
get_track_format_openbsd(void *p_user_data, track_t i_track)
{
	_img_private_t *p_env = p_user_data;

	if (!p_env)
		return (TRACK_FORMAT_ERROR);

	if (!p_env->gen.toc_init)
		read_toc_openbsd(p_env);

	if (!p_env->gen.toc_init ||
	    i_track > (p_env->gen.i_first_track + p_env->gen.i_tracks) ||
	    i_track < p_env->gen.i_first_track)
		return (TRACK_FORMAT_ERROR);

	if (p_env->tocent[i_track - 1].control & CDIO_CDROM_DATA_TRACK)
		return (TRACK_FORMAT_DATA);
	else
		return (TRACK_FORMAT_AUDIO);
}

static bool
get_track_green_openbsd(void *user_data, track_t i_track)
{
	return (get_track_format_openbsd(user_data, i_track) ==
	    TRACK_FORMAT_XA);
}

static int
read_audio_sectors_openbsd(void *p_user_data, void *p_buf, lsn_t i_lsn,
    unsigned int i_blocks)
{
	_img_private_t *p_env = p_user_data;
	return (mmc_read_sectors(p_env->gen.cdio, p_buf, i_lsn,
	    CDIO_MMC_READ_TYPE_CDDA, i_blocks));
}

static int
read_mode2_sector_openbsd(void *p_user_data, void *p_buf, lsn_t i_lsn,
    bool b_mode2_form2)
{
	scsireq_t req;
	_img_private_t *p_env = p_user_data;
	char buf[M2RAW_SECTOR_SIZE] = { 0, };

	memset(&req, 0, sizeof(req));
	req.cmd[0] = CDIO_MMC_GPCMD_READ_CD;
	req.cmd[2] = (i_lsn >> 24) & 0xff;
	req.cmd[3] = (i_lsn >> 16) & 0xff;
	req.cmd[4] = (i_lsn >> 8) & 0xff;
	req.cmd[5] = (i_lsn >> 0) & 0xff;
	req.cmd[8] = 1;
	req.cmd[9] = 0x58; /* subheader + userdata + ECC */
	req.cmdlen = 10;

	req.datalen = M2RAW_SECTOR_SIZE;
	req.databuf = buf;
	req.timeout = 10000;
	req.flags = SCCMD_READ;

	if (ioctl(p_env->gen.fd, SCIOCCOMMAND, &req) < 0) {
		cdio_info("ioctl SCIOCCOMMAND failed: %s\n", strerror(errno));
		return (DRIVER_OP_ERROR);
	}

	if (req.retsts != SCCMD_OK) {
		cdio_info("unexpected status for SCIOCCOMMAND %#x: %#x\n",
		    req.cmd[0], req.retsts);
		return (DRIVER_OP_ERROR);
	}

	if (b_mode2_form2)
		memcpy(p_buf, buf, M2RAW_SECTOR_SIZE);
	else
		memcpy(p_buf, buf + CDIO_CD_SUBHEADER_SIZE, CDIO_CD_FRAMESIZE);

	return (DRIVER_OP_SUCCESS);
}

static int
read_mode2_sectors_openbsd(void *p_user_data, void *p_buf, lsn_t i_lsn,
    bool b_mode2_form2, unsigned int i_blocks)
{
	uint16_t i_blocksize = b_mode2_form2 ? M2RAW_SECTOR_SIZE :
	    CDIO_CD_FRAMESIZE;
	unsigned int i;
	int retval;

	for (i = 0; i < i_blocks; i++) {
		if ((retval = read_mode2_sector_openbsd(p_user_data,
		    ((char *)p_buf) + (i_blocksize * i), i_lsn + i,
		    b_mode2_form2)))
			return (retval);
	}

	return (DRIVER_OP_SUCCESS);
}

static int
set_arg_openbsd(void *p_user_data, const char key[], const char value[])
{
	_img_private_t *p_env = p_user_data;

	if (!strcmp(key, "source")) {
		if (!value)
			return (DRIVER_OP_ERROR);

		free(p_env->gen.source_name);
		p_env->gen.source_name = strdup(value);
	} else if (!strcmp(key, "access-mode")) {
		if (strcmp(value, "READ_CD"))
			cdio_info("unknown access type: %s ignored.", value);
	} else
		return (DRIVER_OP_ERROR);

	return (DRIVER_OP_SUCCESS);
}

static cdio_funcs_t _funcs = {
	.audio_get_volume	= audio_get_volume_openbsd,
	.audio_pause		= audio_pause_openbsd,
	.audio_play_msf		= audio_play_msf_openbsd,
	.audio_play_track_index	= NULL,
#if USE_MMC_SUBCHANNEL
	.audio_read_subchannel	= audio_read_subchannel_mmc,
#else
	.audio_read_subchannel	= audio_read_subchannel_openbsd,
#endif
	.audio_resume		= audio_resume_openbsd,
	.audio_set_volume	= audio_set_volume_openbsd,
	.audio_stop		= audio_stop_openbsd,
	.eject_media		= eject_media_openbsd,
	.free			= cdio_generic_free,
	.get_arg		= get_arg_openbsd,
	.get_blocksize		= NULL,
	.get_cdtext		= get_cdtext_generic,
	.get_default_device	= cdio_get_default_device_openbsd,
	.get_devices		= cdio_get_devices_openbsd,
	.get_disc_last_lsn	= get_disc_last_lsn_openbsd,
	.get_discmode		= get_discmode_generic,
	.get_drive_cap		= get_drive_cap_mmc,
	.get_first_track_num	= get_first_track_num_generic,
	.get_hwinfo		= NULL,
	.get_last_session	= get_last_session_openbsd,
	.get_media_changed	= get_media_changed_mmc,
	.get_mcn		= get_mcn_mmc,
	.get_num_tracks		= get_num_tracks_generic,
	.get_track_channels	= get_track_channels_generic,
	.get_track_copy_permit	= get_track_copy_permit_generic,
	.get_track_lba      	= get_track_lba_openbsd,
	.get_track_format	= get_track_format_openbsd,
	.get_track_green	= get_track_green_openbsd,
	.get_track_msf		= NULL,
	.get_track_preemphasis	= get_track_preemphasis_generic,
	.lseek			= cdio_generic_lseek,
	.read			= cdio_generic_read,
	.read_audio_sectors	= read_audio_sectors_openbsd,
	.read_data_sectors	= read_data_sectors_generic,
	.read_mode2_sector	= read_mode2_sector_openbsd,
	.read_mode2_sectors	= read_mode2_sectors_openbsd,
	.read_mode1_sector	= NULL,
	.read_mode1_sectors	= NULL,
	.read_toc		= read_toc_openbsd,
	.run_mmc_cmd		= run_mmc_cmd_openbsd,
	.set_arg		= set_arg_openbsd,
	.set_blocksize		= NULL,
	.set_speed		= NULL,
};

bool
cdio_have_openbsd(void)
{
	return (true);
}

CdIo *
cdio_open_openbsd(const char *source_name)
{
	CdIo *ret;
	_img_private_t *_data;

	_data = calloc(1, sizeof(_img_private_t));
	_data->gen.init = false;
	_data->gen.toc_init = false;
	_data->gen.fd = -1;

	set_arg_openbsd(_data, "source",
	    (source_name ? source_name : DEFAULT_CDIO_DEVICE));

	if (source_name && !cdio_is_device_generic(source_name))
		goto error;

	ret = cdio_new(_data, &_funcs);
	if (!ret)
		goto error;

	if (!cdio_generic_init(_data, O_RDONLY))
		goto error;

	return (ret);

 error:
	cdio_generic_free(_data);
	return (NULL);
}

CdIo *
cdio_open_am_openbsd(const char *source_name, const char *am)
{
	return (cdio_open_openbsd(source_name));
}

char *
cdio_get_default_device_openbsd()
{
	return (strdup(DEFAULT_CDIO_DEVICE));
}

char **
cdio_get_devices_openbsd(void)
{
	char drive[40];
	char **drives = NULL;
	unsigned int num_drives = 0;
	int cdfd;
	int n;

	for (n = 0; n <= 9; n++) {
		snprintf(drive, sizeof(drive), "/dev/rcd%dc", n);
		if (!cdio_is_device_quiet_generic(drive))
			continue;
		if ((cdfd = open(drive, O_RDONLY|O_NONBLOCK, 0)) == -1)
			continue;
		close(cdfd);
		cdio_add_device_list(&drives, drive, &num_drives);
	}

	cdio_add_device_list(&drives, NULL, &num_drives);

	return (drives);
}

driver_return_code_t
close_tray_openbsd(const char *psz_device)
{
	return (DRIVER_OP_UNSUPPORTED);
}
