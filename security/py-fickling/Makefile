COMMENT =	analyze Python pickle object serializations

MODPY_EGG_VERSION = 0.0.6
REVISION =	0
DISTNAME =	fickling-${MODPY_EGG_VERSION}
PKGNAME =       py-${DISTNAME}
CATEGORIES =	security

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# LGPL 3.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =	setuptools
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS +=	devel/py-flit_core${MODPY_FLAVOR}
# Only needed for python3.8, it's part of python3.9
RUN_DEPENDS +=		devel/py-astunparse${MODPY_FLAVOR}


.include <bsd.port.mk>
