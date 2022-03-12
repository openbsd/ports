# $OpenBSD: Makefile,v 1.36 2022/03/12 09:32:57 ajacoutot Exp $

COMMENT-main=		take photos and videos, with fun graphical effects
COMMENT-libs=		webcam display and capture widgets

GNOME_PROJECT=		cheese
GNOME_VERSION=		41.1

PKGNAME-libs=		libcheese-${GNOME_VERSION}

CATEGORIES=		multimedia

SHARED_LIBS +=	cheese-gtk                0.0 # 0.0
SHARED_LIBS +=	cheese                    0.0 # 0.0

# GPLv2
PERMIT_PACKAGE=		Yes

MULTI_PACKAGES=		-main -libs

WANTLIB += canberra-gtk3 clutter-1.0 clutter-gtk-1.0 gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gstreamer-1.0 gtk-3

WANTLIB-main += ${WANTLIB}
WANTLIB-main += c cheese cheese-gtk gnome-desktop-3 intl

WANTLIB-libs += ${WANTLIB}
WANTLIB-libs += X11 cairo clutter-gst-3.0 cogl gstpbutils-1.0 m

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS= 	desktop-file-utils docbook gobject-introspection \
			gtk-update-icon-cache vala yelp

CONFIGURE_ARGS=		-Dgtk_doc=false

LIB_DEPENDS-main=	${BASE_PKGPATH},-libs \
			x11/gnome/desktop

LIB_DEPENDS-libs=	audio/libcanberra,-gtk3 \
			graphics/clutter/clutter-gst \
			graphics/clutter/clutter-gtk

RUN_DEPENDS-main=	${RUN_DEPENDS} \
			x11/gnome/video-effects

RUN_DEPENDS-libs=	# empty

# GStreamer elements: vp8enc, webmmux
RUN_DEPENDS-libs +=	multimedia/gstreamer1/plugins-good

# GStreamer element: camerabin
BUILD_DEPENDS +=	multimedia/gstreamer1/plugins-bad
RUN_DEPENDS-libs +=	multimedia/gstreamer1/plugins-bad

.include <bsd.port.mk>
