COMMENT=	WebSocket to TCP proxy

MODPY_EGG_VERSION= 0.11.0
GH_ACCOUNT=	novnc
GH_PROJECT=	websockify
GH_TAGNAME=	v${MODPY_EGG_VERSION}
REVISION=	0

CATEGORIES=	net

# LGPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS= --ignore tests/test_token_plugins.py
RUN_DEPENDS=	math/py-numpy${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}

post-build:
	cd ${WRKSRC}; env ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS}

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/websockify.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/lib/websockify
	${INSTALL_DATA} ${WRKSRC}/rebind.so ${PREFIX}/lib/websockify/

.include <bsd.port.mk>
