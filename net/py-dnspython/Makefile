COMMENT=	DNS toolkit for Python

# see net/py2-dnspython for py2 version
MODPY_DISTV=	2.7.0
DISTNAME=	dnspython-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	net
REVISION=	0

HOMEPAGE=	https://www.dnspython.org/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	hatchling
MODPY_ADJ_FILES= examples/*.py

TEST_DEPENDS=	security/py-ecdsa

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${MODPY_PY_PREFIX}dnspython
	${INSTALL_SCRIPT} ${WRKSRC}/examples/* \
		${PREFIX}/share/examples/${MODPY_PY_PREFIX}dnspython

.include <bsd.port.mk>
