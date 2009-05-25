# $OpenBSD: Makefile,v 1.3 2009/05/25 08:49:31 ajacoutot Exp $

COMMENT =		dump RTMP media streams

DISTNAME =		flvstreamer-1.7
PKGNAME =		${DISTNAME}p1

CATEGORIES =		net

# GPLv2+
PERMIT_PACKAGE_CDROM =	No
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =No
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m stdc++

MASTER_SITES =		http://spacehopper.org/mirrors/
WRKDIST =		${WRKDIR}/flvstreamer

USE_GMAKE =		Yes
MAKE_FLAGS +=		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

NO_REGRESS =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/flvstreamer ${PREFIX}/bin

.include <bsd.port.mk>
