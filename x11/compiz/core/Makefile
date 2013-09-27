# $OpenBSD: Makefile,v 1.25 2013/09/27 17:49:10 ajacoutot Exp $

SHARED_ONLY =	Yes

COMMENT =	OpenGL window and compositing manager

V =		0.8.2
DISTNAME =	compiz-${V}
REVISION=	17

SHARED_LIBS =	decoration	0.0

CATEGORIES =	x11

HOMEPAGE =	http://www.compiz.org/

# MIT, GPL and LGPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU ICE SM X11 X11-xcb XRes Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xxf86vm atk-1.0 c cairo dbus-1 dbus-glib-1
WANTLIB += drm expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs startup-notification-1
WANTLIB += wnck-1 xcb xcb-aux xcb-render xcb-shm xml2 xslt z
WANTLIB += harfbuzz stdc++

MASTER_SITES =	http://releases.compiz.org/${V}/

MODULES =	devel/gconf2 \
		devel/gettext \
		textproc/intltool

MODGCONF2_SCHEMAS_DIR =	compiz

LIB_DEPENDS =	devel/startup-notification \
		devel/libwnck \
		textproc/libxml \
		textproc/libxslt \
		x11/gtk+2

USE_GMAKE =	Yes

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE	= gnu
CONFIGURE_ARGS = ${CONFIGURE_SHARED} \
		 --disable-static \
		 --disable-inotify \
		 --disable-fuse \
		 --disable-librsvg \
		 --disable-metacity \
		 --disable-gnome \
		 --disable-gnome-keybindings \
		 --disable-kde \
		 --disable-kde4 \
		 --disable-kconfig
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
