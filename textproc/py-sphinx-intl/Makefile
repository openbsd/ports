COMMENT =		internationalization helper for Sphinx

MODPY_EGG_VERSION =	2.1.0
PKGNAME =		py-sphinx-intl-${MODPY_EGG_VERSION}
DISTNAME =		sphinx-intl-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		textproc

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR  =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-babel${MODPY_FLAVOR} \
			devel/py-click${MODPY_FLAVOR} \
			devel/py-setuptools${MODPY_FLAVOR} \
			textproc/py-sphinx${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>
