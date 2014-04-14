# $OpenBSD: Makefile,v 1.27 2014/04/14 19:52:44 matthieu Exp $

COMMENT =	OpenGL window and compositing manager

V =		0.8.8
DISTNAME =	compiz-${V}
REVISION =	0

SHARED_LIBS =	decoration	1.0

# MIT, GPL and LGPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	GL GLU ICE SM X11 X11-xcb XRes Xau Xcomposite Xcursor \
		Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender \
		Xxf86vm atk-1.0 c cairo croco-0.6 dbus-1 dbus-glib-1 \
		drm expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glapi glib-2.0 gmodule-2.0 gobject-2.0 graphite2 \
		gthread-2.0 gtk-x11-2.0 harfbuzz m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs \
		rsvg-2 startup-notification-1 stdc++ wnck-1 xcb xcb-util \
		xcb-dri2 xcb-glx xcb-render xcb-shm xml2 xslt z

MASTER_SITES =	http://releases.compiz.org/${V}/

MODULES =	devel/gconf2 \
		devel/gettext \
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
