COMMENT =		Python tool configuration

MODPY_EGG_VERSION =	1.2.6
DISTNAME =		pytoolconfig-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/bagel897/pytoolconfig

# LGPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =		devel/py-pdm-backend${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-tabulate${MODPY_FLAVOR} \
			textproc/py-sphinx${MODPY_FLAVOR}

.include <bsd.port.mk>
