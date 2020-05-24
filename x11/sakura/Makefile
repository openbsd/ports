# $OpenBSD: Makefile,v 1.27 2020/05/24 16:00:44 cwen Exp $

V =		3.7.1
COMMENT =	GTK and VTE based terminal emulator
DISTNAME =	sakura-${V}
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	x11

HOMEPAGE =	http://www.pleyades.net/david/projects/sakura/
MAINTAINER =	Victor Kukshiev <andrey0bolkonsky@gmail.com>

# GPLv2 only
PERMIT_PACKAGE =		Yes

WANTLIB += X11 atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 harfbuzz intl m
WANTLIB += pango-1.0 pangocairo-1.0 vte-2.91

MASTER_SITES =	https://launchpad.net/sakura/trunk/${V}/+download/

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =	devel/gettext,-runtime \
		devel/vte3

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_ARGS =	-DCMAKE_C_FLAGS="${CFLAGS} -std=gnu99"

NO_TEST =	Yes

pre-configure:
	sed -i -e 's,-O2,,g' -e 's,share/man,man,g' \
		${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
