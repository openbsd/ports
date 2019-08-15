# $OpenBSD: Makefile,v 1.34 2019/08/15 05:43:15 landry Exp $

COMMENT =	simple archive manager
CATEGORIES =	x11 archivers
GH_ACCOUNT =	ib
GH_PROJECT =	xarchiver
GH_TAGNAME =	0.5.4.14

HOMEPAGE =	http://xarchiver.sourceforge.net

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 atk-bridge-2.0 c cairo
WANTLIB += cairo-gobject epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz iconv intl m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += pthread xcb xcb-render xcb-shm z

MODULES =	textproc/intltool

USE_GMAKE =	Yes

CONFIGURE_STYLE =	gnu

BUILD_DEPENDS =	textproc/libxslt
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS =	devel/gettext,-runtime \
		x11/gtk+3
RUN_DEPENDS =	archivers/zip \
		archivers/unzip \
		archivers/gtar \
		archivers/p7zip \
		devel/xdg-utils \
		devel/desktop-file-utils \
		x11/gtk+3,-guic


.include <bsd.port.mk>
