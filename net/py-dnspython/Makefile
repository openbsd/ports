# $OpenBSD: Makefile,v 1.28 2019/06/26 15:30:46 kmos Exp $

COMMENT=		DNS toolkit for Python

MODPY_EGG_VERSION=	1.16.0
REVISION=		2
DISTNAME=		dnspython-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		net

HOMEPAGE=		http://www.dnspython.org/

# BSD
PERMIT_PACKAGE=		Yes

MASTER_SITES=		${HOMEPAGE}kits/${MODPY_EGG_VERSION}/

FLAVORS=		python3
FLAVOR?=

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes
MODPY_ADJ_FILES=	examples/*.py

TEST_DEPENDS=		security/py-ecdsa${MODPY_FLAVOR}

.if !${FLAVOR:Mpython3}
TEST_DEPENDS+=		devel/py-typing
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${MODPY_PY_PREFIX}dnspython
	${INSTALL_SCRIPT} ${WRKSRC}/examples/* \
		${PREFIX}/share/examples/${MODPY_PY_PREFIX}dnspython

do-test:
	@cd ${WRKSRC}/tests && env PYTHONPATH=../ \
		make check PYTHON=${MODPY_BIN}

.include <bsd.port.mk>
