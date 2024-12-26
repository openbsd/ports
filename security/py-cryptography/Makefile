COMMENT=	cryptographic recipes and primitives for Python

MODPY_DISTV=	44.0.0
DISTNAME=	cryptography-${MODPY_DISTV}
DISTFILES=	cryptography-${MODPY_DISTV}${EXTRACT_SUFX}
PKGNAME=	${MODPY_PY_PREFIX}${DISTNAME}

CATEGORIES=	security devel

HOMEPAGE=	https://cryptography.io/

# dual: BSD or Apache 2
PERMIT_PACKAGE=	Yes

WANTLIB=	${MODPY_WANTLIB} ${MODCARGO_WANTLIB} crypto ssl

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

MODULES=	devel/cargo \
		lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	maturin
MODCARGO_CARGO_BIN= maturin
CONFIGURE_STYLE= cargo

# avoid picking up test_dist_lto_opt.py in modcargo-crates/cxx
MODPY_PYTEST_ARGS= tests
MODPY_TEST_DIR=	${WRKSRC}/tests

BUILD_DEPENDS=	${RUN_DEPENDS}

RUN_DEPENDS=	devel/py-cffi>=1.4.2

PORTHOME=	${WRKDIR}
TEST_DEPENDS=	devel/py-certifi \
		devel/py-coverage \
		devel/py-hypothesis \
		devel/py-pip \
		devel/py-pretend \
		devel/py-test-benchmark \
		devel/py-test-subtests \
		devel/py-test-xdist \
		devel/py-tz \
		security/py-bcrypt \
		security/py-cryptography_vectors=${MODPY_DISTV} \
		textproc/py-iso8601

MODCARGO_CARGOTOML= ${WRKSRC}/src/rust/Cargo.toml

do-build:
	${MODCARGO_CARGO_RUN} build \
		--manifest-path ${MODCARGO_CARGOTOML} \
		--release \
		${MODCARGO_BUILD_ARGS} ;

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_LIBDIR}
	${MODPY_BIN} -m installer -d ${WRKINST} ${WRKSRC}/target/wheels/*.whl
	rm -r ${WRKINST}${MODPY_SITEPKG}/rust

do-test:
	@pip${MODPY_VERSION} install --no-cache-dir --isolated \
		--target=${WRKSRC}/tests \
		--ignore-installed \
		--no-deps ${WRKSRC}/target/wheels/*.whl
	@${MODPY_TEST_CMD}

.include "crates.inc"

.include <bsd.port.mk>
