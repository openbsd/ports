COMMENT=		gettext(1) files editor for GNOME

GNOME_PROJECT=		gtranslator
GNOME_VERSION=		47.1

CATEGORIES=		textproc devel

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += adwaita-1 c cairo gda-6.0 gettextpo gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-4 gtksourceview-5 intl json-glib-1.0
WANTLIB += pango-1.0 soup-3.0 spelling-1 xml2

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes

LIB_DEPENDS=		devel/gettext,-tools \
			devel/json-glib \
			devel/libsoup3 \
			textproc/libspelling \
			x11/gnome/libgda \
			x11/gnome/libadwaita

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache yelp

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
