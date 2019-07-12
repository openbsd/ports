# $OpenBSD: Makefile,v 1.7 2019/07/12 20:50:00 sthen Exp $

COMMENT=		C++ wrapper for the libxml XML parser library

GNOME_VERSION=		3.0.1
GNOME_PROJECT=		libxml++
PKGNAME=		${GNOME_PROJECT}3-${GNOME_VERSION}
REVISION=		0

SHARED_LIBS +=  xml++-3.0            0.0      # 1.0

CATEGORIES=		textproc

HOMEPAGE=		http://libxmlplusplus.sourceforge.net/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB += ffi glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0 iconv
WANTLIB += intl lzma m pcre pthread sigc-2.0 xml2 z
WANTLIB += ${COMPILER_LIBCXX}

MODULES=		x11/gnome

# c++11
COMPILER =		base-clang ports-gcc

LIB_DEPENDS=		devel/glib2mm \
			textproc/libxml

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
