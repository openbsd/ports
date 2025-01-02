COMMENT=	Python library to manipulate gettext files

MODPY_DISTV =	1.2.0
DISTNAME =	polib-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}

CATEGORIES=	textproc devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools
MODPY_PI =	Yes

MODPY_PYTEST_ARGS = tests/tests.py

# only used in tests, but poisoned if not in BUILD_DEPENDS
BUILD_DEPENDS =	devel/gettext,-tools

.include <bsd.port.mk>
