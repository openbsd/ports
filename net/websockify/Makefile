# $OpenBSD: Makefile,v 1.10 2021/11/02 00:01:53 sthen Exp $

COMMENT=	WebSocket to TCP proxy

MODPY_EGG_VERSION= 0.9.0
GH_ACCOUNT=	novnc
GH_PROJECT=	websockify
GH_TAGNAME=	v${MODPY_EGG_VERSION}
REVISION=	1

CATEGORIES=	net

# LGPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes

RUN_DEPENDS=	math/py-numpy${MODPY_FLAVOR}

# needs mox3 and jwcrypto for tests
NO_TEST=	Yes

post-build:
	cd ${WRKSRC}; env ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS}

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/websockify.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/lib/websockify
	${INSTALL_DATA} ${WRKSRC}/rebind.so ${PREFIX}/lib/websockify/

.include <bsd.port.mk>
