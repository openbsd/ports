# $OpenBSD: Makefile,v 1.6 2019/05/20 20:52:32 sthen Exp $

COMMENT =		ncurses-based hex-editor with diff mode
V =			0.68
DISTNAME =		dhex_${V}
PKGNAME =		dhex-${V}
CATEGORIES =		editors
REVISION =		1

HOMEPAGE =		http://www.dettus.net/dhex/
MAINTAINER =		Thanasoulas Spiros <dsp@2f30.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.dettus.net/dhex/

WANTLIB =		c curses
MAKE_FLAGS =		CC="${CC}" CFLAGS="${CFLAGS}"

NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dhex ${PREFIX}/bin/dhex
	${INSTALL_MAN} ${WRKSRC}/dhex.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/{dhex_markers.5,dhex_searchlog.5,dhexrc.5} ${PREFIX}/man/man5

.include <bsd.port.mk>
