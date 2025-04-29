COMMENT=	WebSocket to TCP proxy

MODPY_DISTV=	0.13.0
GH_ACCOUNT=	novnc
GH_PROJECT=	websockify
GH_TAGNAME=	v${MODPY_DISTV}
REVISION=	0

CATEGORIES=	net

# LGPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
RUN_DEPENDS=	databases/py-redis \
		math/py-numpy \
		www/py-requests
# requires jwcrypto (not ported; add as an RDEP if imported)
MODPY_PYTEST_ARGS= --ignore tests/test_token_plugins.py

post-build:
	cd ${WRKSRC}; env ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS}

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/websockify.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/lib/websockify
	${INSTALL_DATA} ${WRKSRC}/rebind.so ${PREFIX}/lib/websockify/

.include <bsd.port.mk>
