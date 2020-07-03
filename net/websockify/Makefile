# $OpenBSD: Makefile,v 1.8 2020/07/03 21:13:03 sthen Exp $

COMMENT=	WebSocket to TCP proxy

MODPY_EGG_VERSION= 0.9.0
GH_ACCOUNT=	novnc
GH_PROJECT=	websockify
GH_TAGNAME=	v${MODPY_EGG_VERSION}
REVISION=	0

CATEGORIES=	net

# LGPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}

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
