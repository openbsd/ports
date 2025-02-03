COMMENT =		optimising static compiler for Python and Cython

MODPY_DISTV =		3.0.11
DISTNAME =		cython-${MODPY_DISTV}
PKGNAME =		py-cython-${MODPY_DISTV}
CATEGORIES =		lang
REVISION =		1

EPOCH =			0

HOMEPAGE =		https://cython.org/

# Apache 2
PERMIT_PACKAGE =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =		devel/py-setuptools_git
TEST_DEPENDS =		math/py-numpy

# not needed for all use cases, but problems seen with DPB if Pythran
# is installed and then junked while Cython runs.
RUN_DEPENDS =		lang/pythran

PORTHOME =		${WRKDIR}

TEST_TARGET =		test

MAKE_ENV +=		PYTHON=${MODPY_BIN}

do-test:
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} TESTOPTS=-j${MAKE_JOBS} \
		${MAKE_PROGRAM} ${ALL_TEST_FLAGS} -f ${MAKE_FILE} ${TEST_TARGET}

.include <bsd.port.mk>
