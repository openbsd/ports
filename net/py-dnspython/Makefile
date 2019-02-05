# $OpenBSD: Makefile,v 1.26 2019/02/05 20:57:44 sthen Exp $

COMMENT=		DNS toolkit for Python

MODPY_EGG_VERSION=	1.16.0
REVISION=		0
DISTNAME=		dnspython-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		net

HOMEPAGE=		http://www.dnspython.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}kits/${MODPY_EGG_VERSION}/

FLAVORS=		python3
FLAVOR?=

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes
MODPY_ADJ_FILES=	examples/*.py

TEST_DEPENDS=		devel/py-typing${MODPY_FLAVOR} \
			security/py-ecdsa${MODPY_FLAVOR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${MODPY_PY_PREFIX}dnspython
	${INSTALL_SCRIPT} ${WRKSRC}/examples/* \
		${PREFIX}/share/examples/${MODPY_PY_PREFIX}dnspython

do-test:
	@cd ${WRKSRC}/tests && env PYTHONPATH=../ \
		make check PYTHON=${MODPY_BIN}

.include <bsd.port.mk>
