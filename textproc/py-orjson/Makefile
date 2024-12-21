COMMENT =		fast, correct Python JSON library

MODPY_DISTV =	3.10.7
REVISION =		1
DISTNAME =		orjson-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/ijl/orjson

# Apache-2.0, MIT
PERMIT_PACKAGE =	Yes

MAINTAINER =		Aisha Tammy <aisha@openbsd.org>

MODULES =		devel/cargo \
			lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		maturin
MODCARGO_CARGO_BIN =	maturin
CONFIGURE_STYLE =	cargo

TEST_DEPENDS =		devel/py-tz \
			math/py-numpy

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
