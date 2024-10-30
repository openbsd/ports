COMMENT =		Python logging made (stupidly) simple

MODPY_EGG_VERSION =	0.7.2

DISTNAME =		loguru-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/Delgan/loguru/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		flit_core

# test_await_complete_inheritance fails,
# https://github.com/Delgan/loguru/issues/1196
TEST_DEPENDS =		devel/py-colorama${MODPY_FLAVOR} \
			devel/py-freezegun${MODPY_FLAVOR} \
			devel/py-mypy${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR}

.include <bsd.port.mk>
