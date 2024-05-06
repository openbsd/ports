COMMENT=	cryptographic recipes and primitives for Python

MODPY_EGG_VERSION=	42.0.5
DISTNAME=	cryptography-${MODPY_EGG_VERSION}
DISTFILES=	cryptography-${MODPY_EGG_VERSION}${EXTRACT_SUFX}
PKGNAME=	${MODPY_PY_PREFIX}${DISTNAME}
REVISION=	0

.include "crates.inc"

CATEGORIES=	security devel

HOMEPAGE=	https://cryptography.io/

# dual: BSD or Apache 2
PERMIT_PACKAGE=	Yes

WANTLIB=	${MODPY_WANTLIB} ${MODCARGO_WANTLIB} crypto ssl

FLAVORS=	python3
FLAVOR=		python3

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

MODULES=	devel/cargo \
		lang/python

MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

# avoid picking up test_dist_lto_opt.py in modcargo-crates/cxx
MODPY_PYTEST_ARGS= tests

MODCARGO_CARGOTOML= ${WRKSRC}/src/rust/Cargo.toml
MODCARGO_INSTALL= No
MODCARGO_TEST=	No

MAKE_ENV=	OPENSSL_DIR="/usr" OPENSSL_STATIC=0

BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/py-setuptools-rust${MODPY_FLAVOR}

RUN_DEPENDS=	devel/py-cffi${MODPY_FLAVOR}>=1.4.2

PORTHOME=	${WRKDIR}
TEST_DEPENDS=	devel/py-certifi${MODPY_FLAVOR} \
		devel/py-coverage${MODPY_FLAVOR} \
		devel/py-hypothesis${MODPY_FLAVOR} \
		devel/py-pretend${MODPY_FLAVOR} \
		devel/py-test-benchmark${MODPY_FLAVOR} \
		devel/py-test-subtests${MODPY_FLAVOR} \
		devel/py-test-xdist${MODPY_FLAVOR} \
		devel/py-tz${MODPY_FLAVOR} \
		security/py-bcrypt${MODPY_FLAVOR} \
		security/py-cryptography_vectors${MODPY_FLAVOR}=${MODPY_EGG_VERSION} \
		textproc/py-iso8601${MODPY_FLAVOR}

do-configure:
	@${MODCARGO_configure}

do-build:
	@${MODPY_BUILD_TARGET}

.include <bsd.port.mk>
