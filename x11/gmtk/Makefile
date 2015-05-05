# $OpenBSD: Makefile,v 1.27 2015/05/05 17:00:19 sthen Exp $

COMMENT =	gnome-mplayer toolkit
DISTNAME =	gmtk-1.0.9
EPOCH =		0
REVISION =	1

SHARED_LIBS =	gmlib	2.0 \
		gmtk	2.0

CATEGORIES =	x11 devel

HOMEPAGE =	http://kdekorte.googlepages.com/gmtk/

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi cairo
WANTLIB += cairo-gobject dbus-1 epoxy expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs xcb xcb-render xcb-shm z

MASTER_SITES =	https://gmtk.googlecode.com/svn/packages/

MODULES =	devel/gettext \
		textproc/intltool

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
