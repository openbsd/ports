# $OpenBSD: Makefile,v 1.72 2020/07/04 21:14:21 ajacoutot Exp $

COMMENT=		GNOME music playing application

GNOME_PROJECT=		gnome-music
GNOME_VERSION=		3.36.4

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += cairo cairo-gobject gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 m pango-1.0 pangocairo-1.0

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

MODGNOME_TOOLS +=	desktop-file-utils gobject-introspection yelp
MODGNOME_TOOLS +=	gtk-update-icon-cache

MODGNOME_LDFLAGS=	-L${X11BASE}/lib

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

LIB_DEPENDS=		x11/gtk+3

BUILD_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR} \
			x11/gnome/grilo-plugins \
			x11/gnome/libdazzle \
			x11/gnome/libmediaart \
			x11/gnome/online-accounts \
			x11/gnome/tracker

RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			x11/gnome/grilo-plugins \
			x11/gnome/libdazzle \
			x11/gnome/libmediaart \
			x11/gnome/online-accounts \
			x11/gnome/tracker

# sndio(7) support
RUN_DEPENDS +=		multimedia/gstreamer1/plugins-base

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
