# $OpenBSD: Makefile,v 1.34 2019/07/12 20:46:18 sthen Exp $

COMMENT =	Mastermind clone reflexion game

GNOME_PROJECT =	gnome-mastermind
GNOME_VERSION =	0.3.1
REVISION =	19

CATEGORIES =	games

HOMEPAGE =	http://www.autistici.org/gnome-mastermind/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo dbus-1 dbus-glib-1 expat ffi
WANTLIB += fontconfig freetype fribidi gconf-2>=6 gdk-x11-2.0>=1000
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-x11-2.0>=1000 harfbuzz iconv intl m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += pthread xcb xcb-render xcb-shm z

MASTER_SITES =	http://download.gna.org/gnome-mastermind/
EXTRACT_SUFX=		.tar.bz2

MODULES =	x11/gnome

LIB_DEPENDS =	x11/gtk+2 \
		devel/gconf2

MODGNOME_TOOLS += desktop-file-utils gtk-update-icon-cache yelp
CONFIGURE_STYLE =	gnu


.include <bsd.port.mk>
