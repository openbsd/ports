# $OpenBSD: Makefile,v 1.5 2019/05/20 22:15:28 naddy Exp $

COMMENT =	D-Bus menu implementation for Gtk
DISTNAME =	libdbusmenu-16.04.0
REVISION =	0
CATEGORIES =	x11 devel
SHARED_LIBS +=  dbusmenu-glib             0.0 # 4.12
SHARED_LIBS +=  dbusmenu-gtk3             0.0 # 4.12
SHARED_LIBS +=  dbusmenu-jsonloader       0.0 # 4.12

HOMEPAGE =	https://launchpad.net/libdbusmenu/

# LGPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://launchpad.net/libdbusmenu/16.04/16.04.0/+download/

CONFIGURE_STYLE = gnu
USE_GMAKE= yes

MODULES =	textproc/intltool

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/gobject-introspection \
		textproc/libxslt \
		textproc/gtk-doc \
		lang/vala

LIB_DEPENDS =	x11/gtk+3 \
		x11/gtk+2 \
		devel/json-glib

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi c cairo
WANTLIB += cairo-gobject dbus-1 epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gdk-3 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += gtk-x11-2.0 harfbuzz iconv intl json-glib-1.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += xcb xcb-render xcb-shm z

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mclang}
# allows tests to build, but they try to spawn dbus-test-runner and are broken
# this option is only available for clang
CONFIGURE_ENV=CPPFLAGS=-Wno-error=gnu-designator
.endif

.include <bsd.port.mk>
