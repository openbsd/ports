BROKEN-i386=	fatal runtime error: Rust cannot catch foreign exceptions

COMMENT=	Brave's adblock library

MODPY_EGG_VERSION= 0.6.0
DISTNAME=	adblock-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	5

CATEGORIES=	www

# MIT
PERMIT_PACKAGE=Yes

WANTLIB += ${MODCARGO_WANTLIB}

MODULES=	devel/cargo \
		lang/python
MODPY_PI=	Yes

FLAVORS=	python3
FLAVOR=		python3

MODPY_PYBUILD=		maturin
MODCARGO_CARGO_BIN=	maturin
CONFIGURE_STYLE=	cargo

BUILD_DEPENDS=		devel/py-installer${MODPY_FLAVOR}
TEST_DEPENDS=		devel/py-pip${MODPY_FLAVOR} \
			textproc/py-toml${MODPY_FLAVOR}

do-build:
	${MODCARGO_CARGO_RUN} build \
		--manifest-path ${MODCARGO_CARGOTOML} \
		--release \
		${MODCARGO_BUILD_ARGS} ;

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_LIBDIR}
	${MODPY_BIN} -m installer -d ${WRKINST} ${WRKSRC}/target/wheels/*.whl

do-test:
	@pip${MODPY_VERSION} install --no-cache-dir --isolated \
		--target=${WRKSRC}/tests \
		--ignore-installed \
		--no-deps ${WRKSRC}/target/wheels/*.whl
	@${MODPY_TEST_CMD}

.include "crates.inc"

.include <bsd.port.mk>
