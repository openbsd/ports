COMMENT =	file matching and globbing library

MODPY_EGG_VERSION =	8.5.1
DISTNAME =	wcmatch-${MODPY_EGG_VERSION}
PKGNAME =	py-wcmatch-${MODPY_EGG_VERSION}
REVISION =	0

CATEGORIES =	devel textproc

# MIT
PERMIT_PACKAGE =Yes

MODULES =	lang/python

MODPY_PI =	Yes

FLAVORS =	python3
FLAVOR =	python3

MODPY_PYBUILD =	hatchling

RUN_DEPENDS =	textproc/py-bracex${MODPY_FLAVOR}

# needed for tests
PORTHOME =	${WRKDIR}

.include <bsd.port.mk>
