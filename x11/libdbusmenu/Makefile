# $OpenBSD: Makefile,v 1.8 2019/11/13 11:00:52 cwen Exp $

COMMENT =	D-Bus menu implementation for Gtk
DISTNAME =	libdbusmenu-16.04.0
REVISION =	1
CATEGORIES =	x11 devel
SHARED_LIBS +=  dbusmenu-glib             0.0 # 4.12
SHARED_LIBS +=  dbusmenu-gtk3             0.0 # 4.12
SHARED_LIBS +=  dbusmenu-jsonloader       0.0 # 4.12

HOMEPAGE =	https://launchpad.net/libdbusmenu/

# LGPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 c cairo cairo-gobject
WANTLIB += epoxy expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz iconv intl json-glib-1.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread xcb xcb-render xcb-shm z

MASTER_SITES =	https://launchpad.net/libdbusmenu/16.04/16.04.0/+download/

CONFIGURE_STYLE = gnu

# doesn't build with glib2 >= 2.62
CONFIGURE_ARGS =	--disable-dumper

USE_GMAKE= yes

MODULES =	textproc/intltool

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/gobject-introspection \
		textproc/libxslt \
		textproc/gtk-doc \
		lang/vala

LIB_DEPENDS =	x11/gtk+3 \
		devel/json-glib

# -Werror breaks the build with gcc due to glib2 deprecation notices
CFLAGS +=	-Wno-error

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mclang}
# allows tests to build, but they try to spawn dbus-test-runner and are broken
# this option is only available for clang
CONFIGURE_ENV=CPPFLAGS=-Wno-error=gnu-designator
.endif

.include <bsd.port.mk>
