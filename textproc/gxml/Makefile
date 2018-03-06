# $OpenBSD: Makefile,v 1.7 2018/03/06 11:13:04 ajacoutot Exp $

COMMENT=		GObject API that wraps around libxml2

GNOME_VERSION=		0.16.3
GNOME_PROJECT=		gxml

SHARED_LIBS +=  gxml-0.16                 0.0 # 1.0

CATEGORIES=		textproc devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi gee-0.8 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += iconv intl lzma m pcre pthread xml2 z

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

BUILD_DEPENDS=		lang/vala,-valadoc

LIB_DEPENDS=		devel/libgee \
			textproc/libxml

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
