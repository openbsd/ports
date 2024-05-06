COMMENT =		container class boilerplate killer

MODPY_EGG_VERSION =	5.0.0
DISTNAME =		fields-${MODPY_EGG_VERSION}
PKGNAME =		py-fields-${MODPY_EGG_VERSION}
REVISION =		7

CATEGORIES =		devel

HOMEPAGE =		https://github.com/ionelmc/python-fields

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# BSD Licensed
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

TEST_DEPENDS =		devel/py-attrs${MODPY_FLAVOR} \
			devel/py-characteristic${MODPY_FLAVOR} \
			devel/py-freezegun${MODPY_FLAVOR} \
			devel/py-py${MODPY_FLAVOR} \
			devel/py-test-benchmark${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR}

.include <bsd.port.mk>
