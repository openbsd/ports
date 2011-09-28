# $OpenBSD: Makefile,v 1.56 2011/09/28 16:26:15 ajacoutot Exp $

# gnome-volume-control needs pulseaudio.

COMMENT=	GNOME media utilities

GNOME_PROJECT=	gnome-media
GNOME_VERSION=	2.91.2
REVISION=	4

# GPLv2/GFDLv1.1/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo cairo-gobject drm expat fontconfig freetype
WANTLIB += gconf-2 gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gstinterfaces-0.10 gstreamer-0.10 gthread-2.0
WANTLIB += gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs xcb xcb-render xcb-shm
WANTLIB += xml2 z ffi kvm

EXTRACT_SUFX=	.tar.bz2

TAR=		${LOCALBASE}/bin/gtar

MODULES=	devel/gettext \
		x11/gnome

BUILD_DEPENDS=	archivers/gtar \
		multimedia/gstreamer-0.10/plugins-good
RUN_DEPENDS=	multimedia/gstreamer-0.10/plugins-good
LIB_DEPENDS=	multimedia/gstreamer-0.10/plugins-base \
		x11/gtk+3

MODGNOME_TOOLS= yelp
MODGNOME_DESKTOP_FILE=		Yes

# XXX recording doesn't work and "Device" appears as "Unsupported" in
# `gstreamer-properties' (needs pulseaudio); when this is fixed,
# libgnome-media-profiles should be a LIB_DEPENDS
BUILD_DEPENDS+=	x11/gnome/libgnome-media-profiles
RUN_DEPENDS+=	x11/gnome/libgnome-media-profiles
CONFIGURE_ARGS += --disable-grecord

# XXX libcanberra-gtk3 is needed to build the sound-theme which we
# remove because it's already shipped by gnome-control-center and would
# conflict -- revisit for next update
BUILD_DEPENDS += audio/libcanberra,-gtk3
post-install:
	rm -rf ${PREFIX}/share/sounds

.include <bsd.port.mk>
