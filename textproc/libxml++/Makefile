# $OpenBSD: Makefile,v 1.36 2017/07/27 10:05:20 sthen Exp $

PORTROACH=		limit:^2

COMMENT=		C++ wrapper for the libxml XML parser library

GNOME_VERSION=		2.40.1
GNOME_PROJECT=		libxml++
REVISION=		0

SHARED_LIBS +=  xml++-2.6            2.0      # 2.7

CATEGORIES=		textproc

HOMEPAGE=		http://libxmlplusplus.sourceforge.net/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0 lzma m pcre
WANTLIB += pthread sigc-2.0 xml2 z
WANTLIB += ${COMPILER_LIBCXX}

MODULES=		devel/gettext \
			x11/gnome

# c++11
COMPILER =		gcc

LIB_DEPENDS=		devel/glib2mm \
			textproc/libxml

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
