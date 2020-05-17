# $OpenBSD: Makefile,v 1.12 2020/05/17 13:42:21 ajacoutot Exp $

COMMENT=		GObject library for Facebook Graph API

GNOME_PROJECT=		gfbgraph
GNOME_VERSION=		0.2.4
PKGNAME=		lib${GNOME_PROJECT}-${GNOME_VERSION}

SHARED_LIBS +=  gfbgraph-0.2         1.0      # unknown

CATEGORIES=		net

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += brotlicommon brotlidec ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += goa-1.0 gobject-2.0 gthread-2.0 iconv idn2 intl json-glib-1.0
WANTLIB += lzma m pcre psl pthread rest-0.7 soup-2.4 soup-gnome-2.4
WANTLIB += sqlite3 unistring xml2 z

MODULES=		x11/gnome

MODGNOME_TOOLS=		gobject-introspection

LIB_DEPENDS=		x11/gnome/online-accounts

CONFIGURE_STYLE=	autoreconf
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16
BUILD_DEPENDS +=	textproc/gtk-doc

DEBUG_PACKAGES=		${BUILD_PACKAGES}

do-gen:
	cd ${WRKSRC} && gtkdocize

post-install:
	[ -d ${PREFIX}/doc ] && rm -rf ${PREFIX}/doc || exit 1

.include <bsd.port.mk>
