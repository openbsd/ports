# $OpenBSD: Makefile,v 1.19 2009/09/04 11:44:00 eric Exp $

COMMENT=	cairo bindings for Python

VERSION=	1.8.8
DISTNAME=	pycairo-${VERSION}
PKGNAME=	py-cairo-${VERSION}
CATEGORIES=	graphics

HOMEPAGE=	http://cairographics.org/pycairo/

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://cairographics.org/releases/

WANTLIB=	X11 Xau Xdmcp Xrender expat fontconfig freetype glitz
WANTLIB+=	m pixman-1 png pthread-stubs xcb z

MODULES=	lang/python
LIB_DEPENDS=	cairo::graphics/cairo
USE_LIBTOOL=	Yes
USE_X11=	Yes

CONFIGURE_STYLE=gnu

pre-install:
	${SUBST_CMD} ${WRKSRC}/test/examples_test.py

do-regress: fake
	cd ${WRKSRC}/test && env PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./examples_test.py

.include <bsd.port.mk>
