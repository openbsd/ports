COMMENT =		utility belt for advanced users of python-requests

MODPY_EGG_VERSION =	1.0.0
DISTNAME =		requests-toolbelt-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		https://github.com/requests/toolbelt

# APLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		www/py-requests${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
# tests require network access

FLAVORS =		python3
FLAVOR =		python3

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			www/py-betamax${MODPY_FLAVOR}

.include <bsd.port.mk>
