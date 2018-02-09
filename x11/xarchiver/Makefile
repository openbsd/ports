# $OpenBSD: Makefile,v 1.26 2018/02/09 17:06:22 ajacoutot Exp $

COMMENT =	simple archive manager
CATEGORIES =	x11 archivers
GH_ACCOUNT =	ib
GH_PROJECT =	xarchiver
GH_TAGNAME =	0.5.4.8

HOMEPAGE =	http://xarchiver.sourceforge.net

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	textproc/intltool

USE_GMAKE =	Yes

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS =	devel/gettext \
		x11/gtk+3
RUN_DEPENDS =	archivers/zip \
		archivers/unzip \
		archivers/gtar \
		archivers/p7zip \
		devel/xdg-utils \
		devel/desktop-file-utils \
		x11/gtk+3,-guic

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat ffi fontconfig
WANTLIB += freetype gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += harfbuzz iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread xcb xcb-render
WANTLIB += xcb-shm z
WANTLIB += Xtst atk-bridge-2.0 atspi cairo-gobject dbus-1 epoxy
WANTLIB += gdk-3 gtk-3


.include <bsd.port.mk>
