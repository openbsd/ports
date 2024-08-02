COMMENT=		plugins for EOG

GNOME_PROJECT=		eog-plugins
GNOME_VERSION=		44.1

CATEGORIES=		graphics

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += cairo champlain-0.12 champlain-gtk-0.12 clutter-1.0
WANTLIB += clutter-gtk-1.0 exif gdata gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 peas-1.0 peas-gtk-1.0

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

DEBUG_PACKAGES=		${BUILD_PACKAGES}

LIB_DEPENDS=    	devel/libgdata \
			devel/libpeas \
			geo/libchamplain \
			graphics/libexif

BUILD_DEPENDS=		x11/gnome/eog

RUN_DEPENDS=		x11/gnome/eog

.include <bsd.port.mk>
