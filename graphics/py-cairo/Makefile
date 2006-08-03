# $OpenBSD: Makefile,v 1.5 2006/08/03 12:53:18 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	"cairo bindings for Python"

DISTNAME=	pycairo-1.0.2
PKGNAME=	${DISTNAME:S/py/py-/}p2
CATEGORIES=	graphics

HOMEPAGE=	http://cairographics.org/introduction/

MAINTAINER=	Eric Faurot <eric.faurot@gmail.com>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://cairographics.org/releases/

WANTLIB=	freetype

MODULES=	lang/python
LIB_DEPENDS=	cairo.>=4::graphics/cairo
RUN_DEPENDS=	:py-Numeric-*:math/py-Numeric
BUILD_DEPENDS=	${RUN_DEPENDS} \
		:pkgconfig-*:devel/pkgconfig
#USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--without-pygtk
CONFIGURE_ENV=PYTHON=${LOCALBASE}/bin/python${MODPY_VERSION}

.include <bsd.port.mk>
