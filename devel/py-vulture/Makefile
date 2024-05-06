COMMENT =	finds unused code in Python programs

MODPY_EGG_VERSION =	2.11

DISTNAME =	vulture-${MODPY_EGG_VERSION}
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

FLAVORS =	python3
FLAVOR =	python3

# requires py-pint for test_whitelists_with_python
TEST_DEPENDS =  devel/py-test${MODPY_FLAVOR} \
                devel/py-test-cov${MODPY_FLAVOR} \
		textproc/py-toml${MODPY_FLAVOR}

.include <bsd.port.mk>
