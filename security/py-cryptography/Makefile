COMMENT=	cryptographic recipes and primitives for Python

MODPY_DISTV=	45.0.7
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

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	maturin

RUN_DEPENDS=	devel/py-cffi>=1.4.2
BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/py-setuptools

PORTHOME=	${WRKDIR}
TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH} \
		devel/py-certifi \
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

MODCARGO_CARGOTOML= ${WRKSRC}/src/rust/Cargo.toml
MODCARGO_CARGOLOCK= ${WRKSRC}/Cargo.lock

.include "crates.inc"

.include <bsd.port.mk>
