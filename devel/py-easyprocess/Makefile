COMMENT =	easy to use python subprocess interface

MODPY_EGG_VERSION = 1.1
DISTNAME =	EasyProcess-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION =	2

CATEGORIES =	devel

HOMEPAGE =	https://github.com/ponty/EasyProcess

# BSD 2-clauses
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_PYBUILD =		setuptools

FLAVORS =	python3
FLAVOR =	python3

TEST_DEPENDS =	x11/py-virtualdisplay${MODPY_FLAVOR} \
		devel/py-test-timeout${MODPY_FLAVOR}

.include <bsd.port.mk>
