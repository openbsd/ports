# $OpenBSD: Makefile,v 1.20 2010/08/25 20:45:52 sthen Exp $

COMMENT=	cairo bindings for Python

VERSION=	1.8.8
DISTNAME=	pycairo-${VERSION}
PKGNAME=	py-cairo-${VERSION}
REVISION=	0
CATEGORIES=	graphics

HOMEPAGE=	http://cairographics.org/pycairo/

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://cairographics.org/releases/

WANTLIB=	X11 Xau Xdmcp Xrender cairo expat fontconfig freetype glitz m
WANTLIB+=	pixman-1 png pthread-stubs xcb xcb-render xcb-render-util z


MODULES=	lang/python
LIB_DEPENDS=	::graphics/cairo
USE_LIBTOOL=	Yes
USE_X11=	Yes

CONFIGURE_STYLE=gnu

pre-install:
	${SUBST_CMD} ${WRKSRC}/test/examples_test.py

do-regress: fake
	cd ${WRKSRC}/test && env PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./examples_test.py

.include <bsd.port.mk>
