# $OpenBSD: Makefile,v 1.39 2020/06/09 07:14:46 jasper Exp $

COMMENT =	OpenGL window and compositing manager

V =		0.8.8
DISTNAME =	compiz-${V}
REVISION =	9

SHARED_LIBS =	decoration	1.0

# MIT, GPL and LGPL
PERMIT_PACKAGE =	Yes

WANTLIB += GL GLU ICE SM X11 X11-xcb XRes Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo cairo-gobject dbus-1 dbus-glib-1 drm expat
WANTLIB += ffi fontconfig freetype fribidi gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glapi glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz iconv intl lzma m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread rsvg-2 startup-notification-1 wnck-1 xcb
WANTLIB += xcb-dri2 xcb-dri3 xcb-glx xcb-present xcb-render xcb-shm
WANTLIB += xcb-sync xcb-util xcb-xfixes xml2 xshmfence xslt z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	http://releases.compiz.org/${V}/

MODULES =	devel/gconf2 \
		textproc/intltool

MODGCONF2_SCHEMAS_DIR =	compiz

LIB_DEPENDS =	devel/startup-notification \
		devel/libwnck \
		textproc/libxml \
		textproc/libxslt \
		x11/gnome/librsvg \
		x11/gtk+2

USE_GMAKE =	Yes

LIBTOOL_FLAGS =	--tag=disable-static

CONFIGURE_STYLE	= gnu
CONFIGURE_ARGS = --disable-static \
		 --disable-fuse \
		 --disable-inotify \
		 --disable-metacity \
		 --disable-gnome \
		 --disable-gnome-keybindings \
		 --disable-kde \
		 --disable-kde4 \
		 --disable-kconfig
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	@rm -f ${PREFIX}/lib/compiz/*.la

.include <bsd.port.mk>
