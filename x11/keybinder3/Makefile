# $OpenBSD: Makefile,v 1.10 2019/07/12 20:51:14 sthen Exp $

COMMENT =	GTK+3 library for registering keyboard shortcuts
DISTNAME =	keybinder3-0.3.0
CATEGORIES =	x11 devel
REVISION =	6

SHARED_LIBS =	keybinder-3.0		0.0	# 0.0

HOMEPAGE =	https://github.com/engla/keybinder

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi cairo
WANTLIB += cairo-gobject dbus-1 epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz iconv intl m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += pthread xcb xcb-render xcb-shm z

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
