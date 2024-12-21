COMMENT=	cryptographic recipes and primitives for Python

MODPY_DISTV=	42.0.7
DISTNAME=	cryptography-${MODPY_DISTV}
DISTFILES=	cryptography-${MODPY_DISTV}${EXTRACT_SUFX}
PKGNAME=	${MODPY_PY_PREFIX}${DISTNAME}
REVISION=	0

.include "crates.inc"

CATEGORIES=	security devel

HOMEPAGE=	https://cryptography.io/

# dual: BSD or Apache 2
PERMIT_PACKAGE=	Yes

WANTLIB=	${MODPY_WANTLIB} ${MODCARGO_WANTLIB} crypto ssl

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

MODULES=	lang/python

MODPY_PYBUILD=	setuptools-rust
MODPY_PI=	Yes

# avoid picking up test_dist_lto_opt.py in modcargo-crates/cxx
MODPY_PYTEST_ARGS= tests

MODCARGO_CARGOTOML= ${WRKSRC}/src/rust/Cargo.toml

MAKE_ENV=	OPENSSL_DIR="/usr" OPENSSL_STATIC=0

BUILD_DEPENDS=	${RUN_DEPENDS}

RUN_DEPENDS=	devel/py-cffi>=1.4.2

PORTHOME=	${WRKDIR}
TEST_DEPENDS=	devel/py-certifi \
		devel/py-coverage \
		devel/py-hypothesis \
		devel/py-pretend \
		devel/py-test-benchmark \
		devel/py-test-subtests \
		devel/py-test-xdist \
		devel/py-tz \
		security/py-bcrypt \
		security/py-cryptography_vectors=${MODPY_DISTV} \
		textproc/py-iso8601

.include <bsd.port.mk>
