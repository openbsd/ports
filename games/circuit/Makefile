# $OpenBSD: Makefile,v 1.25 2014/09/07 18:11:07 jasper Exp $

COMMENT =	finish-the-cycle logic puzzle
CATEGORIES =	games

MAINTAINER =	Marc Espie <espie@openbsd.org>

DISTNAME =	circuit-0.1.4
REVISION =	7
MASTER_SITES =	http://distfiles.nl/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xau Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb z gdk_pixbuf-2.0 gdk-x11-2.0 gtk-x11-2.0
WANTLIB += GL pthread xcb-render xcb-shm

LIB_DEPENDS =	x11/gtk+2

MODULES =	devel/gettext


do-build:
	cd ${WRKBUILD} && $(CC) $(CFLAGS) `pkg-config --cflags gtk+-2.0` \
		`pkg-config --libs gtk+-2.0` circuit.c -o circuit

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/circuit ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/circuit.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
