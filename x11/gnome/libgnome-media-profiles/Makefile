# $OpenBSD: Makefile,v 1.9 2011/11/04 09:56:29 jasper Exp $

COMMENT=	media profiles management library

GNOME_PROJECT=	libgnome-media-profiles
GNOME_VERSION=	3.0.0
REVISION=	3

SHARED_LIBS +=  gnome-media-profiles-3.0  0.0 # 0.0

CATEGORIES=	multimedia

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo cairo-gobject drm expat fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gstreamer-0.10 gthread-2.0 gtk-3 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm xml2 z dbus-1 dbus-glib-1 ffi stdc++

MODULES=	devel/gconf2 \
		devel/gettext \
		x11/gnome

MODGCONF2_SCHEMAS_DIR=libgnome-media-profiles

MODGNOME_TOOLS= yelp

LIB_DEPENDS=	x11/gtk+3 \
		multimedia/gstreamer-0.10/core

.include <bsd.port.mk>
