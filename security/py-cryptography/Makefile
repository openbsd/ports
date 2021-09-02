# $OpenBSD: Makefile,v 1.48 2021/09/02 07:39:52 ajacoutot Exp $

COMMENT=	cryptographic recipes and primitives for Python

MODPY_EGG_VERSION=	3.4.8
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
FLAVOR=		python3

RUN_DEPENDS=	devel/py-cffi${MODPY_FLAVOR}>=1.4.2 \
		devel/py-six${MODPY_FLAVOR} \
		net/py-idna${MODPY_FLAVOR} \
		security/py-asn1crypto${MODPY_FLAVOR}

BUILD_DEPENDS=	${RUN_DEPENDS}
PORTHOME=	${WRKDIR}

MODPY_PYTEST=	Yes
TEST_DEPENDS=	${FULLPKGNAME}:${FULLPKGPATH} \
		devel/py-coverage${MODPY_FLAVOR} \
		devel/py-hypothesis${MODPY_FLAVOR} \
		devel/py-pretend${MODPY_FLAVOR} \
		devel/py-tz${MODPY_FLAVOR} \
		security/py-cryptography_vectors${MODPY_FLAVOR}=${MODPY_EGG_VERSION} \
		textproc/py-iso8601${MODPY_FLAVOR}
# devel/py-test-subtests${MODPY_FLAVOR} not yet imported

MAKE_ENV=	CRYPTOGRAPHY_DONT_BUILD_RUST=1

.include <bsd.port.mk>
