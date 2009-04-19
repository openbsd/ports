# $OpenBSD: Makefile,v 1.8 2009/04/19 02:01:35 jolan Exp $

COMMENT=	HDHomeRun Config CLI utility & firmware
FW=		hdhomerun_atsc_firmware_20090415.bin \
		hdhomerun_dvbt_firmware_20090415.bin \
		hdhomerun_tech_atsc_firmware_20090415.bin
SRC=		libhdhomerun_20090415.tgz
DISTFILES=	${FW} ${SRC}
EXTRACT_ONLY=	${SRC}
PKGNAME=	hdhomerun-20090415
CATEGORIES=	multimedia
MASTER_SITES=	http://download.silicondust.com/hdhomerun/

HOMEPAGE=	http://www.silicondust.com/

# LGPLv3+
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

ALL_TARGET=	hdhomerun_config
NO_REGRESS=	Yes
USE_GMAKE=	Yes
WANTLIB=	c pthread
WRKDIST=	${WRKDIR}/libhdhomerun

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/hdhomerun_config ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/hdhomerun
.for _fw in ${FW}
	${INSTALL_DATA} ${FULLDISTDIR}/${_fw} ${PREFIX}/share/hdhomerun
.endfor

.include <bsd.port.mk>
