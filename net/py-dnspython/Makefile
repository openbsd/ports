# $OpenBSD: Makefile,v 1.31 2020/12/27 17:42:40 sthen Exp $

COMMENT=		DNS toolkit for Python

# dnspython>=2 is py3-only; some deps are hard to update:
# mail/mailman net/samba textproc/calibre
MODPY_EGG_VERSION=	1.16.0
REVISION=		4
DISTNAME=		dnspython-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		net

HOMEPAGE=		https://www.dnspython.org/

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
