# $OpenBSD: Makefile,v 1.15 2014/07/19 21:09:18 sthen Exp $

V=		20140604
COMMENT=	HDHomeRun Config CLI utility & firmware
FW=		hdhomerun_atsc_firmware_$V.bin \
		hdhomerun_dvbt_firmware_$V.bin \
		hdhomerun3_atsc_firmware_$V.bin \
		hdhomerun3_dvbt_firmware_$V.bin \
		hdhomerun3_dvbtc_firmware_$V.bin \
		hdhomerun3_cablecard_firmware_$V.bin \
		hdhomerun3_dvbc_firmware_$V.bin \
		hdhomerun4_atsc_firmware_$V.bin \
		hdhomeruntc_atsc_firmware_$V.bin
SRC=		libhdhomerun_$V.tgz
DISTFILES=	${FW} ${SRC}
EXTRACT_ONLY=	${SRC}
PKGNAME=	hdhomerun-$V
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
SUBST_VARS+=	V

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/hdhomerun_config ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/hdhomerun
.for _fw in ${FW}
	${INSTALL_DATA} ${FULLDISTDIR}/${_fw} ${PREFIX}/share/hdhomerun
.endfor

.include <bsd.port.mk>
