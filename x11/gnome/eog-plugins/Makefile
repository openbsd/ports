COMMENT=		plugins for EOG

GNOME_PROJECT=		eog-plugins
GNOME_VERSION=		44.1
REVISION=		2

CATEGORIES=		graphics

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += cairo exif gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3 peas-1.0 peas-gtk-1.0

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

LIB_DEPENDS=    	devel/libpeas \
			graphics/libexif

BUILD_DEPENDS=		x11/gnome/eog

RUN_DEPENDS=		x11/gnome/eog

CONFIGURE_ARGS=		-Dplugin_map=false \
			-Dplugin_postasa=false

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
