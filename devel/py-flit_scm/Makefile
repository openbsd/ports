COMMENT=	pep 518 build backend that uses setuptools_scm and flit_core

MODPY_EGG_VERSION =	1.7.0
DISTNAME =	flit_scm-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

FLAVOR =	python3
FLAVORS =	python3

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools_scm

BUILD_DEPENDS =	devel/py-flit_core${MODPY_FLAVOR} \
		textproc/py-tomli${MODPY_FLAVOR}

RUN_DEPENDS =	devel/py-flit_core${MODPY_FLAVOR} \
		devel/py-setuptools_scm${MODPY_FLAVOR} \
		textproc/py-tomli${MODPY_FLAVOR}

NO_TEST =	Yes

.include <bsd.port.mk>
