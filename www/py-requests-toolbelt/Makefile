COMMENT =		utility belt for advanced users of python-requests

MODPY_DISTV =	1.0.0
DISTNAME =		requests-toolbelt-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		www

HOMEPAGE =		https://github.com/requests/toolbelt

# APLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		www/py-requests

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
# tests require network access

TEST_DEPENDS =		devel/py-mock \
			www/py-betamax

.include <bsd.port.mk>
