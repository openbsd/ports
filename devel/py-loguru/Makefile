COMMENT =		Python logging made (stupidly) simple

MODPY_DISTV =	0.7.2

DISTNAME =		loguru-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://github.com/Delgan/loguru/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

# test_await_complete_inheritance fails,
# https://github.com/Delgan/loguru/issues/1196
TEST_DEPENDS =		devel/py-colorama \
			devel/py-freezegun \
			devel/py-mypy \
			devel/py-test-cov

.include <bsd.port.mk>
