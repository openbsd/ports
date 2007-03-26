# $OpenBSD: Makefile,v 1.9 2007/03/26 20:32:11 alek Exp $

SHARED_ONLY=	Yes

COMMENT=	"cairo bindings for Python"

DISTNAME=	pycairo-1.2.6
PKGNAME=	${DISTNAME:S/py/py-/}
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
USE_LIBTOOL=	Yes
USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--without-pygtk
CONFIGURE_ENV=	PYTHON=${MODPY_BIN}

pre-install:
	perl -pi -e "s,!!MODPY_BIN!!,${MODPY_BIN}," ${WRKSRC}/test/test.test

do-regress: fake
	cd ${WRKSRC}/test && env PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./test.py

.include <bsd.port.mk>
