COMMENT =		dark style sheet for QtWidgets apps

MODPY_EGG_VERSION =	2.8.1
DISTNAME =		QDarkStyle-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}

CATEGORIES =		devel

# MIT
# CC BY 4.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-helpdev${MODPY_FLAVOR} \
			x11/py-qtpy${MODPY_FLAVOR}>=1.9

NO_TEST =		Yes

.include <bsd.port.mk>
