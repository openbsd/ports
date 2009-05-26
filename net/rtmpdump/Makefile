# $OpenBSD: Makefile,v 1.7 2009/05/26 14:13:22 sthen Exp $

COMMENT =		dump RTMP media streams

DISTNAME =		rtmpdump-v1.6
PKGNAME =		${DISTNAME:S/-v/-/}

CATEGORIES =		net

# GPLv2+
PERMIT_PACKAGE_CDROM =	No
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =No
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m stdc++ crypto ssl

MASTER_SITES =		http://lkcl.net/rtmp/ \
			http://downloads.sehe.nl/lkcl.net/rtmp/

WRKDIST =		${WRKDIR}/rtmpdump

MAKE_FLAGS +=		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

NO_REGRESS =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/rtmpdump ${PREFIX}/bin

.include <bsd.port.mk>
