COMMENT =		Python implementation of the patiencediff algorithm

MODPY_EGG_VERSION =	0.2.6
DISTNAME =		patiencediff-${MODPY_EGG_VERSION}
PKGNAME =		py-patiencediff-${MODPY_EGG_VERSION}

CATEGORIES =		textproc

HOMEPAGE =		https://pypi.org/project/patiencediff/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODPY_WANTLIB} pthread

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
BUILD_DEPENDS =		lang/cython${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
