COMMENT =	draw annotations on X11

GH_ACCOUNT =	bk138
GH_PROJECT =	gromit-mpx
GH_TAGNAME =	1.3.1

CATEGORIES =	x11

HOMEPAGE =	https://github.com/bk138/gromit-mpx

MAINTAINER =	Laurence Tratt <laurie@tratt.net>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xi atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 harfbuzz intl m
WANTLIB += pango-1.0 pangocairo-1.0

MODULES =	devel/cmake

CONFIGURE_ARGS =	-DCMAKE_INSTALL_SYSCONFDIR=share/examples

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic
LIB_DEPENDS =	x11/gtk+3

NO_TEST =	Yes

post-install:
	rm -f ${PREFIX}/share/doc/gromit-mpx/ChangeLog

.include <bsd.port.mk>
