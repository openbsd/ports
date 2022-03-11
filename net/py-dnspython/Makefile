COMMENT=		DNS toolkit for Python

# see net/py2-dnspython for py2 version
MODPY_EGG_VERSION=	2.1.0
DISTNAME=		dnspython-${MODPY_EGG_VERSION}
EXTRACT_SUFX=		.zip
MASTER_SITES=		${HOMEPAGE}kits/${MODPY_EGG_VERSION}/
PKGNAME=		py-${DISTNAME}
CATEGORIES=		net
REVISION=		0

HOMEPAGE=		https://www.dnspython.org/

# BSD
PERMIT_PACKAGE=		Yes

FLAVORS=		python3
FLAVOR=			python3

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_ADJ_FILES=	examples/*.py
MODPY_PYTEST=		Yes

TEST_DEPENDS=		security/py-ecdsa${MODPY_FLAVOR}

TEST_ENV+=		PYTHONPATH="${WRKSRC}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${MODPY_PY_PREFIX}dnspython
	${INSTALL_SCRIPT} ${WRKSRC}/examples/* \
		${PREFIX}/share/examples/${MODPY_PY_PREFIX}dnspython

.include <bsd.port.mk>
