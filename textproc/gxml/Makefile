# $OpenBSD: Makefile,v 1.3 2017/10/29 10:02:22 ajacoutot Exp $

COMMENT=		GObject API that wraps around libxml2

GNOME_VERSION=		0.14.3
GNOME_PROJECT=		gxml

SHARED_LIBS +=  gxml-0.14            0.0      # 14.3

CATEGORIES=		textproc devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi gee-0.8 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += iconv intl lzma m pcre pthread xml2 z

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

LIB_DEPENDS=		devel/libgee \
			textproc/libxml

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-docs # valadoc(1)

.include <bsd.port.mk>
