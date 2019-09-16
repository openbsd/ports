# $OpenBSD: Makefile,v 1.83 2019/09/16 06:09:10 ajacoutot Exp $

COMMENT=		gettext(1) files editor for GNOME

GNOME_PROJECT=		gtranslator
GNOME_VERSION=		3.34.0
REVISION=		1

CATEGORIES=		textproc devel

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += atk-1.0 c cairo gda-5.0 gdk-3 gettextpo gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gspell-1 gtk-3 gtksourceview-4 intl json-glib-1.0
WANTLIB += pango-1.0 soup-2.4 xml2

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes

LIB_DEPENDS=		devel/gettext,-tools \
			devel/json-glib \
			textproc/gspell \
			x11/gtksourceview4 \
			x11/gnome/libgda

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache yelp

.include <bsd.port.mk>
