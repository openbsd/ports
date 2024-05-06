COMMENT =		Python bindings for the LZO compression library

MODPY_EGG_VERSION =	1.15
DISTNAME =		python-lzo-${MODPY_EGG_VERSION}
PKGNAME =		py-lzo-${MODPY_EGG_VERSION}
CATEGORIES =		archivers
REVISION =		0

# GPL
PERMIT_PACKAGE =	Yes

WANTLIB =		lzo2
LIB_DEPENDS =		archivers/lzo2

FLAVORS =		python3
FLAVOR =		python3

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

.include <bsd.port.mk>
