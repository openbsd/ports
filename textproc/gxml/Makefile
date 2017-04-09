# $OpenBSD: Makefile,v 1.1.1.1 2017/04/09 11:29:08 ajacoutot Exp $

COMMENT=		GObject API that wraps around libxml2

GNOME_VERSION=		0.14.2
GNOME_PROJECT=		gxml

SHARED_LIBS +=  gxml-0.14                 0.0 # 14.0

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

.include <bsd.port.mk>
