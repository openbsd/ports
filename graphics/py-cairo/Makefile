# $OpenBSD: Makefile,v 1.15 2009/02/16 14:48:53 eric Exp $

COMMENT=	cairo bindings for Python

VERSION=	1.8.2
DISTNAME=	pycairo-${VERSION}
PKGNAME=	py-cairo-${VERSION}
CATEGORIES=	graphics

HOMEPAGE=	http://cairographics.org/pycairo/

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://cairographics.org/releases/

WANTLIB=	X11 Xrender Xau Xdmcp expat fontconfig freetype glitz m pixman-1 png z

MODULES=	lang/python
LIB_DEPENDS=	cairo.>=6::graphics/cairo
USE_LIBTOOL=	Yes
USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	PYTHON=${MODPY_BIN}

pre-install:
	perl -pi -e "s,!!MODPY_BIN!!,${MODPY_BIN}," ${WRKSRC}/test/test.test

do-regress: fake
	cd ${WRKSRC}/test && env PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./test.py

.include <bsd.port.mk>
