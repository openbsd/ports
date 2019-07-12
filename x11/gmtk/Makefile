# $OpenBSD: Makefile,v 1.34 2019/07/12 20:51:11 sthen Exp $

COMMENT =	gnome-mplayer toolkit
DISTNAME =	gmtk-1.0.9
EPOCH =		0
REVISION =	6

SHARED_LIBS =	gmlib	2.0 \
		gmtk	2.0

CATEGORIES =	x11 devel

HOMEPAGE =	http://kdekorte.googlepages.com/gmtk/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi cairo
WANTLIB += cairo-gobject dbus-1 epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz iconv intl m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += pthread xcb xcb-render xcb-shm z

MASTER_SITES =	https://gmtk.googlecode.com/svn/packages/

MODULES =	textproc/intltool

LIB_DEPENDS =		x11/gtk+3

RUN_DEPENDS =		x11/mplayer

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV =         CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS +=	--enable-gsettings \
			--enable-gtk3 \
			--disable-gconf \
			--disable-keystore \
			--with-gio \
			--without-alsa \
			--without-pulseaudio

NO_TEST =	Yes

.include <bsd.port.mk>
