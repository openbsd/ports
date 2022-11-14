COMMENT =		passive checker of Python programs

MODPY_EGG_VERSION =	2.3.1
DISTNAME =		pyflakes-${MODPY_EGG_VERSION}
REVISION =		2

CATEGORIES =		devel

HOMEPAGE =		https://github.com/PyCQA/pyflakes

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
TEST_ENV =		PY_IGNORE_IMPORTMISMATCH=1

FLAVORS =		python3
FLAVOR =		python3

pre-test:
	ln -fs ../bin ${WRKSRC}/lib/

.include <bsd.port.mk>
