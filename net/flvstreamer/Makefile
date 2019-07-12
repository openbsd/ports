# $OpenBSD: Makefile,v 1.16 2019/07/12 20:48:26 sthen Exp $

COMMENT =		dump unencrypted RTMP media streams

DISTNAME =		flvstreamer-2.1c1
WRKDIST =		${WRKDIR}/flvstreamer
REVISION =		0

CATEGORIES =		net

HOMEPAGE =		http://www.nongnu.org/flvstreamer/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

MASTER_SITES =		${MASTER_SITE_SAVANNAH:=flvstreamer/source/}

MAKE_FLAGS =		CC="${CC}" XCFLAGS="${CFLAGS}"
ALL_TARGET =		linux

NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/flvstreamer
	${INSTALL_PROGRAM} ${WRKBUILD}/flvstreamer ${PREFIX}/bin
.for i in rtmpsrv rtmpsuck streams
	${INSTALL_PROGRAM} ${WRKBUILD}/$i ${PREFIX}/bin/$i_flv
.endfor
	cd ${WRKBUILD}; \
	    ${INSTALL_DATA} README COPYING ChangeLog* ${PREFIX}/share/doc/flvstreamer

.include <bsd.port.mk>
