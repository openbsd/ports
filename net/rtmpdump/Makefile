# $OpenBSD: Makefile,v 1.8 2009/11/19 01:06:07 sthen Exp $

COMMENT =		dump RTMP media streams

DISTNAME =		rtmpdump-1.9
EXTRACT_SUFX =		.tgz
PKGNAME =		${DISTNAME:S/-v/-/}

CATEGORIES =		net

# GPLv2+
PERMIT_PACKAGE_CDROM =	No
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =No
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m stdc++ crypto

HOMEPAGE =		http://rtmpdump.mplayerhq.hu/
MASTER_SITES =		${HOMEPAGE}

MAKE_FLAGS +=		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"
ALL_TARGET =		linux

NO_REGRESS =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/rtmpdump ${PREFIX}/bin

.include <bsd.port.mk>
