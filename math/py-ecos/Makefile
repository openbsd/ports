COMMENT =		Python interface to ECOS

MODPY_EGG_VERSION =	2.0.10
DISTNAME =		ecos-${MODPY_EGG_VERSION}
V =			${MODPY_EGG_VERSION:S/post//}
PKGNAME =		py-ecos-${V}
CATEGORIES =		math
REVISION =		0

WANTLIB =  pthread
MAINTAINER =		Paul Irofti <paul@irofti.net>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =		math/py-numpy${MODPY_FLAVOR} \
			math/py-oldest-supported-numpy${MODPY_FLAVOR}

RUN_DEPENDS =		math/py-numpy${MODPY_FLAVOR}>=1.6 \
			math/py-scipy${MODPY_FLAVOR}>=0.9

.include <bsd.port.mk>
