# $OpenBSD: Makefile,v 1.7 2009/07/29 13:28:10 sthen Exp $

COMMENT =		dump RTMP media streams

DISTNAME =		flvstreamer-1.8f

CATEGORIES =		net

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m stdc++

MASTER_SITES =		${MASTER_SITE_SAVANNAH:=flvstreamer/source/}
WRKDIST =		${WRKDIR}/flvstreamer

USE_GMAKE =		Yes
MAKE_FLAGS +=		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

NO_REGRESS =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/flvstreamer ${PREFIX}/bin

.include <bsd.port.mk>
