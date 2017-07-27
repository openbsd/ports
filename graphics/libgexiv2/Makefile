# $OpenBSD: Makefile,v 1.26 2017/07/27 09:55:45 sthen Exp $

COMMENT=		GObject wrapper around exiv2

GNOME_VERSION=		0.10.6
GNOME_PROJECT=		gexiv2
PKGNAME=		lib${DISTNAME}
REVISION=		0

CATEGORIES=		graphics

SHARED_LIBS +=  gexiv2               2.1      # 2.0

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += exiv2 expat ffi glib-2.0 gobject-2.0 iconv intl m pcre
WANTLIB += pthread z
WANTLIB += ${COMPILER_LIBCXX}

MODULES=		lang/python \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

# C++11
COMPILER =		gcc
CXXFLAGS +=		-std=c++11

LIB_DEPENDS=		devel/glib2 \
			graphics/exiv2

# import gi
BUILD_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}
RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR}

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		ac_cv_path_PYTHON3_PATH=${MODPY_BIN}

.include <bsd.port.mk>
