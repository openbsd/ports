# $OpenBSD: Makefile,v 1.30 2019/07/12 20:46:15 sthen Exp $

COMMENT =	finish-the-cycle logic puzzle
CATEGORIES =	games

MAINTAINER =	Marc Espie <espie@openbsd.org>

DISTNAME =	circuit-0.1.4
REVISION =	10
MASTER_SITES =	https://distfiles.nl/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =  GL X11 Xau Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread xcb xcb-render xcb-shm z

LIB_DEPENDS =	x11/gtk+2

do-build:
	cd ${WRKBUILD} && $(CC) $(CFLAGS) `pkg-config --cflags gtk+-2.0` \
		`pkg-config --libs gtk+-2.0` circuit.c -o circuit

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/circuit ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/circuit.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
