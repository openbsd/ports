# $OpenBSD: Makefile,v 1.66 2012/06/15 08:30:20 ajacoutot Exp $

COMMENT=	GNOME media utilities

GNOME_PROJECT=	gnome-media
GNOME_VERSION=	3.4.0
REVISION=	0

# GPLv2/GFDLv1.1/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo cairo-gobject dbus-1 dbus-glib-1 drm expat
WANTLIB += ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gnome-media-profiles-3.0 gobject-2.0
WANTLIB += gstinterfaces-0.10 gstreamer-0.10 gthread-2.0 gtk-3
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs xcb xcb-render xcb-shm xml2
WANTLIB += z stdc++

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

BUILD_DEPENDS=	multimedia/gstreamer-0.10/plugins-good
# gstreamer-plugins-good needed for sndio(7)
RUN_DEPENDS=	multimedia/gstreamer-0.10/plugins-good
LIB_DEPENDS=	multimedia/gstreamer-0.10/plugins-base \
		x11/gnome/libgnome-media-profiles \
		x11/gtk+3

MODGNOME_TOOLS=		yelp
MODGNOME_ICON_CACHE=	Yes
MODGNOME_DESKTOP_FILE=	Yes
MODGCONF2_SCHEMAS_DIR=	gnome-media

# XXX libcanberra-gtk3 is needed to build the sound-theme which we
# remove because it's already shipped by gnome-control-center and would
# conflict -- revisit for next update
BUILD_DEPENDS += audio/libcanberra,-gtk3
post-install:
	rm -rf ${PREFIX}/share/sounds

.include <bsd.port.mk>
