# $OpenBSD: Makefile,v 1.3 2013/03/11 11:02:49 espie Exp $

COMMENT =		ncurses-based hex-editor with diff mode
V =			0.66
DISTNAME =		dhex_${V}
PKGNAME =		dhex-${V}
CATEGORIES =		editors

MAINTAINER =		Thanasoulas Spiros <dsp@2f30.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.dettus.net/dhex/

WANTLIB =		c ncurses
MAKE_FLAGS =		CC="${CC}" CFLAGS="${CFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dhex ${PREFIX}/bin/dhex

.include <bsd.port.mk>
