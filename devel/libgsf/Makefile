# $OpenBSD: Makefile,v 1.98 2019/07/12 20:44:38 sthen Exp $

COMMENT=		GNOME Structured File library

GNOME_PROJECT=		libgsf
GNOME_VERSION=		1.14.46

CATEGORIES=		devel

SHARED_LIBS +=  gsf-1                114.12   # 114.45

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += bz2 c ffi gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 iconv intl lzma m pcre pthread xml2 z

MODULES=		x11/gnome

MODGNOME_TOOLS=		gobject-introspection

LIB_DEPENDS=		archivers/bzip2 \
			graphics/gdk-pixbuf2 \
			textproc/libxml

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
