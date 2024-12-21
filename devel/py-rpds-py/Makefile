COMMENT =		Python bindings for Rust's persistent data structures (rpds)

MODPY_DISTV =	0.20.0
REVISION =		1
DISTNAME =		rpds_py-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/_/-/g}

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODCARGO_WANTLIB}

MODULES =		devel/cargo \
			lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		maturin

MODCARGO_CARGO_BIN =	maturin
CONFIGURE_STYLE =	cargo

TEST_DEPENDS =		devel/py-pip

do-build:
	${MODCARGO_CARGO_RUN} build \
		--manifest-path ${MODCARGO_CARGOTOML} \
		--release \
		${MODCARGO_BUILD_ARGS}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/target/release/librpds.so ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_LIBDIR}
	${MODPY_BIN} -m installer -d ${WRKINST} ${WRKSRC}/target/wheels/*.whl

do-test:
	pip${MODPY_VERSION} install --no-cache-dir --isolated \
		--target=${WRKSRC}/tests \
		--ignore-installed \
		--no-deps ${WRKSRC}/target/wheels/*.whl
	cd ${WRKSRC} && ${SETENV} ${ALL_TEST_ENV} ${MODPY_BIN} -m pytest -v

.include "crates.inc"

.include <bsd.port.mk>
