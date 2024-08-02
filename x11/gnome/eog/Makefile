# Need librsvg>=2.44.0 that is rust only
ONLY_FOR_ARCHS=		${RUST_ARCHS}

COMMENT=		Eye of GNOME, image viewing and cataloging program

GNOME_PROJECT=		eog
GNOME_VERSION=		45.4

CATEGORIES=		graphics

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += X11 c cairo exempi exif gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += girepository-1.0 glib-2.0 gnome-desktop-3 gobject-2.0
WANTLIB += gtk-3 handy-1 intl jpeg lcms2 m peas-1.0 peas-gtk-1.0
WANTLIB += portal portal-gtk3 rsvg-2 z

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

BUILD_DEPENDS=		devel/gsettings-desktop-schemas

LIB_DEPENDS=		devel/libpeas \
			graphics/lcms2 \
			graphics/libexif \
			sysutils/flatpak/libportal,-gtk3 \
			textproc/exempi \
			x11/gnome/desktop \
			x11/libhandy

RUN_DEPENDS=		devel/gsettings-desktop-schemas

MODGNOME_TOOLS += desktop-file-utils gobject-introspection yelp
MODGNOME_TOOLS += gtk-update-icon-cache shared-mime-info

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
