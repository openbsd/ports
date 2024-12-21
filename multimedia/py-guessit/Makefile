COMMENT =	guess information from video filenames

MODPY_DISTV =	3.8.0
DISTNAME =	guessit-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	multimedia

HOMEPAGE =	https://doc.guessit.io/

# LGPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	guessit

BUILD_DEPENDS =	devel/py-test-runner
RUN_DEPENDS =	devel/py-dateutil \
		misc/py-babelfish \
		textproc/py-rebulk>=3
TEST_DEPENDS =	textproc/py-yaml \
		devel/py-test-benchmark \
		devel/py-test-mock

.include <bsd.port.mk>
