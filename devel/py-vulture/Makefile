COMMENT =	finds unused code in Python programs

MODPY_DISTV =	2.14

DISTNAME =	vulture-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	https://github.com/jendrikseipp/vulture

MAINTAINER =	Martin Reindl <martin@catai.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

# requires py-pint for test_whitelists_with_python
TEST_DEPENDS =  devel/py-test \
                devel/py-test-cov \
		textproc/py-toml

.include <bsd.port.mk>
