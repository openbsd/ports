# $OpenBSD: Makefile,v 1.11 2019/07/07 11:20:52 ajacoutot Exp $

COMMENT=		GObject library for Facebook Graph API

GNOME_PROJECT=		gfbgraph
GNOME_VERSION=		0.2.3
PKGNAME=		lib${GNOME_PROJECT}-${GNOME_VERSION}
REVISION=		0

SHARED_LIBS +=  gfbgraph-0.2              0.1 # 0.0

CATEGORIES=		net

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 goa-1.0 gobject-2.0
WANTLIB += gthread-2.0 json-glib-1.0 lzma m pcre pthread rest-0.7
WANTLIB += soup-2.4 soup-gnome-2.4 sqlite3 xml2 z iconv intl

MODULES=		x11/gnome

MODGNOME_TOOLS +=	gobject-introspection
LIB_DEPENDS=		x11/gnome/online-accounts

CONFIGURE_STYLE=	gnu

post-install:
	[ -d ${PREFIX}/doc ] && rm -rf ${PREFIX}/doc || exit 1

.include <bsd.port.mk>
