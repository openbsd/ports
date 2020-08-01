# $OpenBSD: Makefile,v 1.39 2020/08/01 11:47:16 sthen Exp $

COMMENT=	cryptographic recipes and primitives for Python

MODPY_EGG_VERSION=	3.0
DISTNAME=	cryptography-${MODPY_EGG_VERSION}
PKGNAME=	${MODPY_PY_PREFIX}${DISTNAME}
CATEGORIES=	security devel

HOMEPAGE=	https://cryptography.io/

# dual: BSD or Apache 2
PERMIT_PACKAGE=	Yes

WANTLIB=	${MODPY_WANTLIB} crypto pthread ssl

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes
MODPY_PI=	Yes

FLAVORS=	python3
FLAVOR?=

RUN_DEPENDS=	devel/py-cffi${MODPY_FLAVOR}>=1.4.2 \
		devel/py-six${MODPY_FLAVOR} \
		net/py-idna${MODPY_FLAVOR} \
		security/py-asn1crypto${MODPY_FLAVOR}

.if ! ${FLAVOR:Mpython3}
RUN_DEPENDS+=	devel/py-enum34 \
		net/py-ipaddress
.endif

BUILD_DEPENDS=	${RUN_DEPENDS}

MODPY_PYTEST=	Yes
# XXX needs *loads* of RAM
TEST_DEPENDS=	${FULLPKGNAME}:${FULLPKGPATH} \
		devel/py-coverage${MODPY_FLAVOR} \
		devel/py-hypothesis${MODPY_FLAVOR} \
		devel/py-pretend${MODPY_FLAVOR} \
		devel/py-test${MODPY_FLAVOR} \
		devel/py-tz${MODPY_FLAVOR} \
		security/py-cryptography_vectors${MODPY_FLAVOR}=${MODPY_EGG_VERSION} \
		textproc/py-iso8601${MODPY_FLAVOR}

.include <bsd.port.mk>
