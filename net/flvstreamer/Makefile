# $OpenBSD: Makefile,v 1.1.1.1 2009/05/24 23:57:01 sthen Exp $

COMMENT =		dump RTMP media streams

DISTNAME =		flvstreamer-1.7

CATEGORIES =		net

# GPLv2+
PERMIT_PACKAGE_CDROM =	No
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =No
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m stdc++ crypto ssl

MASTER_SITES =		http://spacehopper.org/mirrors/
WRKDIST =		${WRKDIR}/flvstreamer

USE_GMAKE =		Yes
MAKE_FLAGS +=		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

NO_REGRESS =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/flvstreamer ${PREFIX}/bin

.include <bsd.port.mk>
