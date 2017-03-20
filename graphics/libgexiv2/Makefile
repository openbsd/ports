# $OpenBSD: Makefile,v 1.21 2017/03/20 12:52:03 ajacoutot Exp $

COMMENT=		GObject wrapper around exiv2

GNOME_VERSION=		0.10.5
GNOME_PROJECT=		gexiv2
PKGNAME=		lib${DISTNAME}

CATEGORIES=		graphics

SHARED_LIBS +=  gexiv2               2.1      # 2.0

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += exiv2 expat ffi glib-2.0 gobject-2.0 iconv intl m pcre
WANTLIB += pthread z

MODULES=		lang/python \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

# gexiv2/gexiv2-metadata-gps.cpp:29:15: error: 'overflow_error' is not a member of 'std'
MODULES +=		gcc4
MODGCC4_LANGS=		c++
MODGCC4_ARCHS=		*
CXXFLAGS +=		-std=c++11

LIB_DEPENDS=		devel/glib2 \
			graphics/exiv2

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		ac_cv_path_PYTHON2_PATH=${MODPY_BIN}

.include <bsd.port.mk>
