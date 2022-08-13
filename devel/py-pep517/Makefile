COMMENT =	wrappers to build Python packages using PEP 517 hooks

MODPY_EGG_VERSION =	0.13.0

DISTNAME =	pep517-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

# https://github.com/pypa/pep517
HOMEPAGE =	https://pep517.readthedocs.io/en/latest/

# MIT
PERMIT_PACKAGE = Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_PEP517 =	flit_core

FLAVOR =	python3
FLAVORS =	python3

RUN_DEPENDS =	textproc/py-tomli${MODPY_FLAVOR}

# has some network tests
MODPY_PYTEST =	Yes
TEST_DEPENDS =	devel/py-pip${MODPY_FLAVOR}
PORTHOME =	${WRKDIR}

.include <bsd.port.mk>
