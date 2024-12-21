COMMENT =	extract semantic information about static Python code

MODPY_DISTV =	0.4.2.post1

DISTNAME =	beniget-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	https://github.com/serge-sans-paille/beniget/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	tests/*

RUN_DEPENDS =		devel/py-gast

.include <bsd.port.mk>
