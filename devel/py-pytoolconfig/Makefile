COMMENT =		Python tool configuration

MODPY_EGG_VERSION =	1.2.6
DISTNAME =		pytoolconfig-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://github.com/bagel897/pytoolconfig

# LGPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		pdm

TEST_DEPENDS =		devel/py-tabulate${MODPY_FLAVOR} \
			textproc/py-sphinx${MODPY_FLAVOR}

.include <bsd.port.mk>
