# $OpenBSD: Makefile,v 1.6 2019/08/21 14:26:56 sthen Exp $

COMMENT=	WebSocket to TCP proxy

MODPY_EGG_VERSION= 0.8.0
GH_ACCOUNT=	kanaka
GH_PROJECT=	websockify
GH_TAGNAME=	v${MODPY_EGG_VERSION}
REVISION=	0

CATEGORIES=	net

# LGPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes

RUN_DEPENDS=	math/py-numpy
TEST_DEPENDS=	devel/py-test \
		devel/py-mox \
		${BUILD_PKGPATH}-=${MODPY_EGG_VERSION}

post-build:
	cd ${WRKSRC}; env ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS}

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/websockify.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/lib/websockify
	${INSTALL_DATA} ${WRKSRC}/rebind.so ${PREFIX}/lib/websockify/

do-test:
	cd ${WRKSRC}/tests; py.test

.include <bsd.port.mk>
