COMMENT =	check for files left open at the end of a pytest run

MODPY_EGG_VERSION =	0.5.0

DISTNAME =	pytest-openfiles-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/py//}
REVISION =	2

CATEGORIES =	devel

HOMEPAGE =	https://github.com/astropy/pytest-openfiles

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools_scm

FLAVOR =	python3
FLAVORS =	python3

RUN_DEPENDS =	devel/py-test${MODPY_FLAVOR} \
		sysutils/py-packaging${MODPY_FLAVOR} \
		sysutils/py-psutil${MODPY_FLAVOR}

.include <bsd.port.mk>
