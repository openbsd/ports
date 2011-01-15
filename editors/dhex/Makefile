# $OpenBSD: Makefile,v 1.1.1.1 2011/01/15 08:54:43 sthen Exp $

COMMENT =		ncurses-based hex-editor with diff mode
V = 			0.62
DISTNAME =		dhex_${V}
PKGNAME =		dhex-${V}
CATEGORIES =		editors

MAINTAINER =		Thanasoulas Spiros <dsp@physics.uoc.gr>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://www.dettus.net/dhex/

WANTLIB = 		c ncurses
MAKE_FLAGS =		CC="${CC}" CFLAGS="${CFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dhex ${PREFIX}/bin/dhex

.include <bsd.port.mk>
