# $OpenBSD: Makefile,v 1.58 2019/11/24 11:26:36 ajacoutot Exp $

COMMENT=		email application built around conversations

GNOME_PROJECT=		geary
GNOME_VERSION=		3.34.2

CATEGORIES=		mail

HOMEPAGE=		https://wiki.gnome.org/Apps/Geary

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += c cairo canberra enchant-2 folks gck-1 gcr-base-3 gdk-3
WANTLIB += gdk_pixbuf-2.0 gee-0.8 gio-2.0 glib-2.0 gmime-2.6 goa-1.0
WANTLIB += gobject-2.0 gspell-1 gtk-3 handy-0.0 intl javascriptcoregtk-4.0
WANTLIB += json-glib-1.0 m pango-1.0 pangocairo-1.0 secret-1 soup-2.4
WANTLIB += sqlite3 webkit2gtk-4.0 xml2 ytnef

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache vala yelp

CONFIGURE_ARGS=		-Dlibunwind_optional=true \
			-Diso_639_xml=${LOCALBASE}/share/xml/iso-codes/iso_639.xml \
			-Diso_3166_xml=${LOCALBASE}/share/xml/iso-codes/iso_3166.xml

RUN_DEPENDS=		devel/iso-codes

BUILD_DEPENDS=		devel/appstream-glib \
			devel/iso-codes

LIB_DEPENDS=		audio/libcanberra \
			converters/libytnef \
			databases/sqlite3 \
			devel/libgee \
			mail/gmime \
			net/telepathy/folks \
			textproc/gspell \
			x11/gnome/online-accounts \
			x11/libhandy

.include <bsd.port.mk>
