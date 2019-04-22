# $OpenBSD: Makefile,v 1.78 2019/04/22 11:19:51 ajacoutot Exp $

COMMENT=		gettext(1) files editor for GNOME

GNOME_PROJECT=		gtranslator
GNOME_VERSION=		3.32.1

CATEGORIES=		textproc devel

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject enchant-2 gda-5.0 gdk-3
WANTLIB += gdk_pixbuf-2.0 gettextpo gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gspell-1 gtk-3 gtksourceview-4 intl pango-1.0 pangocairo-1.0
WANTLIB += pthread xml2

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes

LIB_DEPENDS=		devel/gettext-tools \
			textproc/gspell \
			x11/gtksourceview4 \
			x11/gnome/libgda

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache yelp

.include <bsd.port.mk>
