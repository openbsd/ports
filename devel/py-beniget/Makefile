COMMENT =	extract semantic information about static Python code

MODPY_EGG_VERSION =	0.4.1

DISTNAME =	beniget-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	2

CATEGORIES =	devel

HOMEPAGE =	https://github.com/serge-sans-paille/beniget/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =	python3
FLAVOR  =	python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	tests/*

RUN_DEPENDS =		devel/py-gast${MODPY_FLAVOR}

.include <bsd.port.mk>
