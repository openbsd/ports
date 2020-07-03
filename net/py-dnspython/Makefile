# $OpenBSD: Makefile,v 1.30 2020/07/03 21:13:01 sthen Exp $

COMMENT=		DNS toolkit for Python

MODPY_EGG_VERSION=	1.16.0
REVISION=		3
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
MODPY_PYTEST=		Yes

TEST_DEPENDS=		security/py-ecdsa${MODPY_FLAVOR}

.if !${FLAVOR:Mpython3}
TEST_DEPENDS+=		devel/py-typing
.endif

TEST_ENV+=		PYTHONPATH="${WRKSRC}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${MODPY_PY_PREFIX}dnspython
	${INSTALL_SCRIPT} ${WRKSRC}/examples/* \
		${PREFIX}/share/examples/${MODPY_PY_PREFIX}dnspython

.include <bsd.port.mk>
