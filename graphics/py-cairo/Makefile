# $OpenBSD: Makefile,v 1.8 2007/02/11 00:56:57 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	"cairo bindings for Python"

DISTNAME=	pycairo-1.0.2
PKGNAME=	${DISTNAME:S/py/py-/}p3
CATEGORIES=	graphics

HOMEPAGE=	http://cairographics.org/introduction/

MAINTAINER=	Eric Faurot <eric.faurot@gmail.com>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://cairographics.org/releases/

WANTLIB=	X11 Xext Xrender fontconfig freetype m z glitz png

MODULES=	lang/python
LIB_DEPENDS=	cairo.>=4::graphics/cairo
RUN_DEPENDS=	:py-Numeric-*:math/py-Numeric
BUILD_DEPENDS=	${RUN_DEPENDS}
#USE_LIBTOOL=	Yes
USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--without-pygtk
CONFIGURE_ENV=PYTHON=${LOCALBASE}/bin/python${MODPY_VERSION}

.include <bsd.port.mk>
