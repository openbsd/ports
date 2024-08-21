COMMENT =		data validation using Python type hints

MODPY_EGG_VERSION =	2.21.0
DISTNAME =		pydantic_core-${MODPY_EGG_VERSION}
PKGNAME =		py-pydantic-core-${MODPY_EGG_VERSION}

CATEGORIES =		devel

MAINTAINER =		Renaud Allard <renaud@allard.it>

# MIT License
PERMIT_PACKAGE =	Yes

MODULES =		devel/cargo \
			lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		maturin

WANTLIB +=		${MODCARGO_WANTLIB}
MODCARGO_CARGO_BIN =    maturin
CONFIGURE_STYLE =       cargo

MAKE_ENV +=		${MODCARGO_ENV}

RUN_DEPENDS =		devel/py-typing-extensions${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-test-mock${MODPY_FLAVOR} \
			devel/py-pip${MODPY_FLAVOR} \
			devel/py-test-benchmark${MODPY_FLAVOR} \
			devel/py-dirty-equals${MODPY_FLAVOR} \
			devel/py-hypothesis${MODPY_FLAVOR} \
			devel/py-coverage${MODPY_FLAVOR} \
			devel/py-test-timeout${MODPY_FLAVOR} \
			math/py-pandas${MODPY_FLAVOR}
PORTHOME =		${WRKDIR}

FLAVORS =		python3
FLAVOR =		python3

do-build:
	${MODCARGO_CARGO_RUN} build \
		--manifest-path ${MODCARGO_CARGOTOML} \
		--release \
		${MODCARGO_BUILD_ARGS}

do-install:
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
