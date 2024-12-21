COMMENT =	check for files left open at the end of a pytest run

MODPY_DISTV =	0.5.0

DISTNAME =	pytest-openfiles-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME:S/py//}
REVISION =	3

CATEGORIES =	devel

HOMEPAGE =	https://github.com/astropy/pytest-openfiles

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools_scm

RUN_DEPENDS =	devel/py-test \
		sysutils/py-packaging \
		sysutils/py-psutil

.include <bsd.port.mk>
