COMMENT =		fast, correct Python JSON library

MODPY_EGG_VERSION =	3.10.7
REVISION =		0
DISTNAME =		orjson-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/ijl/orjson

# Apache-2.0, MIT
PERMIT_PACKAGE =	Yes

MAINTAINER =		Aisha Tammy <aisha@openbsd.org>

MODULES =		devel/cargo \
			lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		maturin
MODCARGO_CARGO_BIN =	maturin
CONFIGURE_STYLE =	cargo


TEST_DEPENDS =		devel/py-tz${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR}

TEST_ENV =		PYTHONPATH=${WRKSRC}/test-install/${MODPY_LIBDIR}/site-packages

do-build:
	${MODCARGO_BUILD_TARGET}

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_LIBDIR}
	${MODPY_BIN} -m installer -d ${WRKINST} ${WRKSRC}/target/wheels/*.whl

do-test:
	rm -rf ${WRKSRC}/test-install
	${MODPY_BIN} -m installer -d ${WRKSRC}/test-install ${WRKSRC}/target/wheels/*.whl
	cd ${WRKSRC} && \
	env ${TEST_ENV} PYTHONPATH=${WRKSRC}/test-install/${MODPY_LIBDIR}/site-packages ${MODPY_BIN} -m pytest -vvv

.include "crates.inc"

.include <bsd.port.mk>
