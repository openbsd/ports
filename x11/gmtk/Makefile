# $OpenBSD: Makefile,v 1.14 2013/03/11 11:46:09 espie Exp $

COMMENT =	gnome-mplayer toolkit
DISTNAME =	gmtk-1.0.7
REVISION =	0

SHARED_LIBS =	gmlib	1.0 \
		gmtk	1.0

CATEGORIES =	x11 devel

HOMEPAGE =	http://kdekorte.googlepages.com/gmtk/

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://gmtk.googlecode.com/files/

MODULES =	devel/gettext \
		textproc/intltool

WANTLIB =	GL ICE SM X11 Xau Xcomposite Xcursor Xdamage \
		Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender \
		Xxf86vm atk-1.0 atk-bridge-2.0 atspi cairo \
		cairo-gobject dbus-1 drm expat ffi \
		fontconfig freetype gdk-3 gdk_pixbuf-2.0 \
		gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 \
		gthread-2.0 gtk-3 harfbuzz icudata icule \
		icuuc m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png pthread \
		pthread-stubs stdc++ xcb xcb-render xcb-shm z

LIB_DEPENDS =		x11/gtk+3

RUN_DEPENDS =		x11/mplayer

USE_LIBTOOL =		yes

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
