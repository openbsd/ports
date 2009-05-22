# $OpenBSD: Makefile,v 1.5 2009/05/22 23:43:58 sthen Exp $

COMMENT =		dump RTMP media streams

DISTNAME =		rtmpdump-v1.5
PKGNAME =		${DISTNAME:S/-v/-/}p1

CATEGORIES =		net

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m stdc++ crypto ssl

MASTER_SITES =		http://spacehopper.org/mirrors/ \
			${MASTER_SITE_SOURCEFORGE:=rtmpdump/}

WRKDIST =		${WRKDIR}/rtmpdump

MAKE_FLAGS +=		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

NO_REGRESS =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/rtmpdump ${PREFIX}/bin

.include <bsd.port.mk>
