# $OpenBSD: Makefile,v 1.12 2010/01/04 11:14:47 sthen Exp $

COMMENT =		dump RTMP media streams

DISTNAME =		flvstreamer-2.1a
WRKDIST =		${WRKDIR}/flvstreamer

CATEGORIES =		net

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c

MASTER_SITES =		${MASTER_SITE_SAVANNAH:=flvstreamer/source/}

USE_GMAKE =		Yes
MAKE_FLAGS +=		CC="${CC}" CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
			OPT="${CFLAGS}"

ALL_TARGET =		linux
NO_REGRESS =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/flvstreamer ${PREFIX}/bin

.include <bsd.port.mk>
