# $OpenBSD: Makefile,v 1.9 2020/10/03 10:36:43 ajacoutot Exp $

COMMENT=		C++ wrapper for the libxml XML parser library

GNOME_VERSION=		3.2.2
GNOME_PROJECT=		libxml++
PKGNAME=		${GNOME_PROJECT}3-${GNOME_VERSION}

SHARED_LIBS += xml++-3.0                 0.1 # 1.0.0

CATEGORIES=		textproc

HOMEPAGE=		http://libxmlplusplus.sourceforge.net/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} glibmm-2.4 xml2

MODULES=		devel/meson \
			x11/gnome

DEBUG_PACKAGES=		${BUILD_PACKAGES}

# c++11
COMPILER=		base-clang ports-gcc

LIB_DEPENDS=		devel/glib2mm \
			textproc/libxml

.include <bsd.port.mk>
