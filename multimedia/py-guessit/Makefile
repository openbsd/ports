COMMENT =	guess information from video filenames

MODPY_EGG_VERSION =	3.8.0
DISTNAME =	guessit-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	multimedia

HOMEPAGE =	https://doc.guessit.io/

# LGPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	guessit

BUILD_DEPENDS =	devel/py-test-runner${MODPY_FLAVOR}
RUN_DEPENDS =	devel/py-dateutil${MODPY_FLAVOR} \
		misc/py-babelfish${MODPY_FLAVOR} \
		textproc/py-rebulk${MODPY_FLAVOR}>=3
TEST_DEPENDS =	textproc/py-yaml${MODPY_FLAVOR} \
		devel/py-test-benchmark${MODPY_FLAVOR} \
		devel/py-test-mock${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>
