# $OpenBSD: Makefile,v 1.1.1.1 2009/04/17 17:56:50 sthen Exp $

COMMENT =		dump RTMP media streams

DISTNAME =		rtmpdump-v1.4
PKGNAME =		${DISTNAME:S/-v/-/}

CATEGORIES =		net

HOMEPAGE =		http://sourceforge.net/projects/rtmpdump/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m stdc++

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=rtmpdump/}
WRKDIST =		${WRKDIR}/rtmpdump

MAKE_FLAGS +=		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

NO_REGRESS =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/rtmpdump ${PREFIX}/bin

.include <bsd.port.mk>
