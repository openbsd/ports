# $OpenBSD: Makefile,v 1.14 2013/03/11 11:35:44 espie Exp $

COMMENT=	HDHomeRun Config CLI utility & firmware
FW=		hdhomerun_atsc_firmware_20110323.bin \
		hdhomerun_dvbt_firmware_20110323.bin \
		hdhomerun_tech_atsc_firmware_20110323.bin \
		hdhomerun3_atsc_firmware_20110323.bin \
		hdhomerun3_dvbt_firmware_20110323.bin \
		hdhomerun3_dvbtc_firmware_20110323.bin
SRC=		libhdhomerun_20110323.tgz
DISTFILES=	${FW} ${SRC}
EXTRACT_ONLY=	${SRC}
PKGNAME=	hdhomerun-20110323
REVISION=	0
CATEGORIES=	multimedia
MASTER_SITES=	http://download.silicondust.com/hdhomerun/

HOMEPAGE=	http://www.silicondust.com/

# LGPLv3+
PERMIT_PACKAGE_CDROM=	Yes

ALL_TARGET=	hdhomerun_config
NO_TEST=	Yes
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
