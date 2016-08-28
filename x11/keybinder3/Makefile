# $OpenBSD: Makefile,v 1.7 2016/08/28 17:44:09 jca Exp $

COMMENT =	GTK+3 library for registering keyboard shortcuts
DISTNAME =	keybinder3-0.3.0
CATEGORIES =	x11 devel
REVISION =	4

SHARED_LIBS =	keybinder-3.0		0.0	# 0.0

HOMEPAGE =	https://github.com/engla/keybinder

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject dbus-1 epoxy expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz iconv
WANTLIB += intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs xcb xcb-render xcb-shm z

MASTER_SITES =	http://mirrors.nycbug.org/pub/distfiles/

MODULES =	x11/gnome

MODGNOME_TOOLS =	gobject-introspection

LIB_DEPENDS =	x11/gtk+3

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-static

USE_GMAKE =		Yes
LIBTOOL_FLAGS =		--tag=disable-static

post-install:
	rm ${PREFIX}/lib/libkeybinder-3.0.la

.include <bsd.port.mk>
