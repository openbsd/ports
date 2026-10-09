COMMENT=	image viewer and browser for GNOME

GNOME_PROJECT=	gthumb
GNOME_VERSION=	4.0

CATEGORIES=	graphics

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} adwaita-1 c cairo exiv2 gdk_pixbuf-2.0
WANTLIB += gif gio-2.0 glib-2.0 gobject-2.0 graphene-1.0 gstreamer-1.0
WANTLIB += gtk-4 heif intl jpeg jxl jxl_threads lcms2 m pango-1.0
WANTLIB += png portal portal-gtk4 rsvg-2 tiff webp webpdemux z

COMPILER=	base-clang ports-gcc base-gcc

MODULES=	devel/dconf \
		devel/meson \
		x11/gnome

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS=		devel/appstream \
			devel/gsettings-desktop-schemas \
			multimedia/gstreamer1/plugins-base

LIB_DEPENDS=	graphics/exiv2 \
		graphics/libjxl \
		graphics/libwebp \
		multimedia/gstreamer1/core \
		multimedia/libheif \
		sysutils/flatpak/libportal,-gtk4 \
		x11/gnome/libadwaita \
		x11/gnome/librsvg

RUN_DEPENDS=	devel/gsettings-desktop-schemas \
		multimedia/gstreamer1/plugins-base

MODGNOME_TOOLS=	desktop-file-utils gtk-update-icon-cache vala

# until proven useful
CONFIGURE_ARGS +=	-Dcolord=false

.include <bsd.port.mk>
