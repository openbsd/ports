# $OpenBSD: Makefile,v 1.9 2009/12/26 08:49:08 benoit Exp $

COMMENT =		dump RTMP media streams

DISTNAME =		rtmpdump-2.0
PKGNAME =		${DISTNAME:S/-v/-/}
CATEGORIES =		net

HOMEPAGE =		http://rtmpdump.mplayerhq.hu/

# GPLv2+
PERMIT_PACKAGE_CDROM =	No
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =No
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c crypto

MASTER_SITES =		${HOMEPAGE}/download/

MAKE_FLAGS =		CC="${CC}" CFLAGS="${CFLAGS}"
ALL_TARGET =		linux

NO_REGRESS =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/rtmpdump ${PREFIX}/bin

.include <bsd.port.mk>
