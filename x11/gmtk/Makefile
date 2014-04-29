# $OpenBSD: Makefile,v 1.25 2014/04/29 13:38:48 dcoppa Exp $

COMMENT =	gnome-mplayer toolkit
DISTNAME =	gmtk-1.0.9
EPOCH =		0

SHARED_LIBS =	gmlib	2.0 \
		gmtk	2.0

CATEGORIES =	x11 devel

HOMEPAGE =	http://kdekorte.googlepages.com/gmtk/

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://gmtk.googlecode.com/svn/packages/

MODULES =	devel/gettext \
		textproc/intltool

WANTLIB =	ICE SM X11 Xcomposite Xcursor Xdamage Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 \
		atk-bridge-2.0 atspi cairo cairo-gobject \
		dbus-1 expat ffi fontconfig freetype gdk-3 \
		gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 \
		gobject-2.0 graphite2 gthread-2.0 gtk-3 \
		harfbuzz m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png \
		pthread pthread-stubs xcb xcb-render xcb-shm z

LIB_DEPENDS =		x11/gtk+3

RUN_DEPENDS =		x11/mplayer


CONFIGURE_STYLE =	gnu

CONFIGURE_ENV =         CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-gsettings \
			--enable-gtk3 \
			--disable-gconf \
			--disable-keystore \
			--with-gio \
			--without-alsa \
			--without-pulseaudio

NO_TEST =	Yes

.include <bsd.port.mk>
