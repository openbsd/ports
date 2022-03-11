COMMENT=	cryptographic recipes and primitives for Python

MODPY_EGG_VERSION=	36.0.1
DISTNAME=	cryptography-${MODPY_EGG_VERSION}
DISTFILES=	cryptography-${MODPY_EGG_VERSION}${EXTRACT_SUFX}
PKGNAME=	${MODPY_PY_PREFIX}${DISTNAME}

.include "crates.inc"

PATCHORIG=	.patch.orig

CATEGORIES=	security devel

HOMEPAGE=	https://cryptography.io/

# dual: BSD or Apache 2
PERMIT_PACKAGE=	Yes

WANTLIB=	${MODPY_WANTLIB} c crypto c++abi pthread ssl

FLAVORS=	python3
FLAVOR=		python3

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

MODULES=	devel/cargo \
		lang/python

MODPY_SETUPTOOLS= Yes
MODPY_PI=	Yes

MODCARGO_CARGOTOML= ${WRKSRC}/src/rust/Cargo.toml
MODCARGO_INSTALL= No
MODCARGO_TEST=	No

BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/py-setuptools-rust${MODPY_FLAVOR}

RUN_DEPENDS=	devel/py-cffi${MODPY_FLAVOR}>=1.4.2

# XXX needs pytest >=6
MODPY_PYTEST=	Yes
PORTHOME=	${WRKDIR}
TEST_DEPENDS=	devel/py-coverage${MODPY_FLAVOR} \
		devel/py-hypothesis${MODPY_FLAVOR} \
		devel/py-pretend${MODPY_FLAVOR} \
		devel/py-test-subtests${MODPY_FLAVOR} \
		devel/py-test-xdist${MODPY_FLAVOR} \
		devel/py-tz${MODPY_FLAVOR} \
		security/py-bcrypt${MODPY_FLAVOR} \
		security/py-cryptography_vectors${MODPY_FLAVOR}=${MODPY_EGG_VERSION} \
		textproc/py-iso8601${MODPY_FLAVOR}

do-configure:
	@${MODCARGO_configure}

.include <bsd.port.mk>
