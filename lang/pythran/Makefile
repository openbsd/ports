COMMENT =	ahead of time compiler for numeric kernels

# scipy (1.13.1, as used at 20241120) wants pythran<0.16.0
MODPY_EGG_VERSION =	0.15.0

DISTNAME =	pythran-${MODPY_EGG_VERSION}
REVISION =	2

CATEGORIES =	lang

HOMEPAGE =	https://github.com/serge-sans-paille/pythran

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =	python3
FLAVOR  =	python3

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

# There are tests in the github tarball; they take hours to run.
NO_TEST =	Yes

RUN_DEPENDS =	devel/py-ply${MODPY_FLAVOR} \
		devel/py-gast${MODPY_FLAVOR} \
		devel/py-beniget${MODPY_FLAVOR} \
		math/py-numpy${MODPY_FLAVOR}

.include <bsd.port.mk>
