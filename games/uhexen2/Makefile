# $OpenBSD: Makefile,v 1.9 2019/07/12 20:46:26 sthen Exp $

COMMENT =		Hexen II: Hammer of Thyrion

V =			1.5.8
DISTNAME =		hexen2source-${V}
PKGNAME =		uhexen2-${V}
EXTRACT_SUFX =		.tgz
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			hexen2-${V}-linux-i586.tgz
REVISION =		2

CATEGORIES =		games
HOMEPAGE =		http://uhexen2.sourceforge.net/

MAINTAINER =		Edd Barrett <edd@openbsd.org>

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=uhexen2/}

# GPLv2
PERMIT_PACKAGE =	Yes

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS =		devel/nasm
.endif

LIB_DEPENDS =		devel/sdl \
			audio/libmad \
			audio/libvorbis

WANTLIB += SDL c m mad ogg pthread vorbis vorbisfile

USE_GMAKE =		Yes
MAKE_FLAGS +=		CC=${CC}

DOMAKE =		${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS}
do-build:
	cd ${WRKBUILD}/engine/hexen2 && ${DOMAKE} h2
	cd ${WRKBUILD}/engine/hexen2 && ${DOMAKE} clean
	cd ${WRKBUILD}/engine/hexen2 && ${DOMAKE} glh2
	cd ${WRKBUILD}/engine/hexen2/server && ${DOMAKE}
	cd ${WRKBUILD}/engine/hexenworld/server && ${DOMAKE}
	cd ${WRKBUILD}/engine/hexenworld/client && ${DOMAKE} hw
	cd ${WRKBUILD}/engine/hexenworld/client && ${DOMAKE} clean
	cd ${WRKBUILD}/engine/hexenworld/client && ${DOMAKE} glhw
	cd ${WRKBUILD}/h2patch && ${DOMAKE}
	cd ${WRKBUILD}/hw_utils/hwmaster && ${DOMAKE}
	cd ${WRKBUILD}/hw_utils/hwmquery && ${DOMAKE}
	cd ${WRKBUILD}/hw_utils/hwrcon && ${DOMAKE}

BINS =	engine/hexen2/hexen2 \
	engine/hexen2/glhexen2 \
	engine/hexen2/server/h2ded \
	engine/hexenworld/client/hwcl \
	engine/hexenworld/client/glhwcl \
	engine/hexenworld/server/hwsv \
	h2patch/h2patch \
	hw_utils/hwmaster/hwmaster \
	hw_utils/hwmquery/hwmquery \
	hw_utils/hwrcon/hwrcon

DATA =	${PREFIX}/share/uhexen2
TRUEDATA = ${TRUEPREFIX}/share/uhexen2
do-install:
	cp -r ${WRKDIR}/hexen2-${V} ${DATA}
	chown -R ${SHAREOWN}:${SHAREGRP} ${DATA}
	mv ${DATA}/docs ${PREFIX}/share/doc/uhexen2

# Grr. Need to run out of data dir.
.for B in ${BINS}
# overwriting linux binaries as we go...
	${INSTALL_PROGRAM} ${WRKBUILD}/${B} ${DATA}
	echo "#!/bin/sh\ncd ${TRUEDATA} && ./${B:T} \"\$$@\"\n" \
	    > ${PREFIX}/bin/${B:T}
	chown ${BINOWN}:${BINGRP} ${PREFIX}/bin/${B:T}
	chmod +x ${PREFIX}/bin/${B:T}
.endfor

NO_TEST =		Yes

.include <bsd.port.mk>
