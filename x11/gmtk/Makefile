# $OpenBSD: Makefile,v 1.30 2016/08/29 16:13:04 jca Exp $

COMMENT =	gnome-mplayer toolkit
DISTNAME =	gmtk-1.0.9
EPOCH =		0
REVISION =	3

SHARED_LIBS =	gmlib	2.0 \
		gmtk	2.0

CATEGORIES =	x11 devel

HOMEPAGE =	http://kdekorte.googlepages.com/gmtk/

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject dbus-1 epoxy expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz iconv
WANTLIB += intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs xcb xcb-render xcb-shm z

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
