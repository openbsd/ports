# $OpenBSD: Makefile,v 1.8 2014/04/01 13:21:46 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		GNOME music playing application

GNOME_PROJECT=		gnome-music
GNOME_VERSION=		3.12.0
REVISION=		0

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

MODULES=		x11/gnome \
			devel/dconf \
			lang/python \
			devel/gettext

MODGNOME_TOOLS=		gi yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
MODPY_ADJ_FILES=	gnome-music.in

LIB_DEPENDS=		x11/gtk+3

BUILD_DEPENDS=		x11/gnome/grilo

RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR} \
			x11/dbus-python${MODPY_FLAVOR} \
			x11/gnome/grilo \
			x11/gnome/tracker

# sndio(7) support
RUN_DEPENDS +=	multimedia/gstreamer1/plugins-base

post-install:
	rm ${PREFIX}/lib/gnome-music/*.{a,la}

.include <bsd.port.mk>
