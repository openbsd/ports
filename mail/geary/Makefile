# $OpenBSD: Makefile,v 1.60 2020/06/18 07:30:15 kmos Exp $

COMMENT=		email application built around conversations

GNOME_PROJECT=		geary
GNOME_VERSION=		3.36.2

CATEGORIES=		mail

HOMEPAGE=		https://wiki.gnome.org/Apps/Geary

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += c cairo enchant-2 folks gck-1 gcr-base-3 gdk-3 gdk_pixbuf-2.0
WANTLIB += gee-0.8 gio-2.0 glib-2.0 gmime-3.0 goa-1.0 gobject-2.0
WANTLIB += gspell-1 gtk-3 handy-0.0 intl javascriptcoregtk-4.0
WANTLIB += json-glib-1.0 m pango-1.0 pangocairo-1.0 peas-1.0 secret-1
WANTLIB += soup-2.4 sqlite3 webkit2gtk-4.0 xml2 ytnef

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache vala yelp

CONFIGURE_ARGS=		-Dlibunwind_optional=true \
			-Diso_639_xml=${LOCALBASE}/share/xml/iso-codes/iso_639.xml \
			-Diso_3166_xml=${LOCALBASE}/share/xml/iso-codes/iso_3166.xml

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=		-std=gnu99
.endif

RUN_DEPENDS=		devel/iso-codes

BUILD_DEPENDS=		devel/appstream-glib \
			devel/iso-codes

LIB_DEPENDS=		converters/libytnef \
			databases/sqlite3 \
			devel/libgee \
			devel/libpeas \
			mail/gmime30 \
			net/telepathy/folks \
			textproc/gspell \
			x11/gnome/online-accounts \
			x11/libhandy

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
