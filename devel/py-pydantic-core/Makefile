COMMENT =		data validation using Python type hints

MODPY_DISTV =	2.27.0
REVISION =		1
DISTNAME =		pydantic_core-${MODPY_DISTV}
PKGNAME =		py-pydantic-core-${MODPY_DISTV}

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

BUILD_DEPENDS =		devel/py-typing-extensions
RUN_DEPENDS =		devel/py-typing-extensions
TEST_DEPENDS =		devel/py-test-mock \
			devel/py-pip \
			devel/py-test-benchmark \
			devel/py-dirty-equals \
			devel/py-hypothesis \
			devel/py-coverage \
			devel/py-test-timeout \
			math/py-pandas
PORTHOME =		${WRKDIR}

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
