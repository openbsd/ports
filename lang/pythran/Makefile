COMMENT =	ahead of time compiler for numeric kernels

# scipy (1.13.1, as used at 20241120) wants pythran<0.16.0
MODPY_DISTV =	0.15.0

DISTNAME =	pythran-${MODPY_DISTV}
REVISION =	3

CATEGORIES =	lang

HOMEPAGE =	https://github.com/serge-sans-paille/pythran

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

# There are tests in the github tarball; they take hours to run.
NO_TEST =	Yes

RUN_DEPENDS =	devel/py-ply \
		devel/py-gast \
		devel/py-beniget \
		math/py-numpy

.include <bsd.port.mk>
