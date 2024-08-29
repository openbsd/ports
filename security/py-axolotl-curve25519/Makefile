COMMENT =		Python curve25519 library with ed25519 signatures

MODPY_EGG_VERSION =	0.4.1
POST =			2
DISTNAME =		python-axolotl-curve25519-${MODPY_EGG_VERSION}.post${POST}
PKGNAME =		py-axolotl-curve25519-${MODPY_EGG_VERSION}pl${POST}
REVISION =		9

CATEGORIES =		security

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PI_DIR =		p/python-axolotl-curve25519
MODPY_PYBUILD =	setuptools

FLAVORS =		python3
FLAVOR =	python3

.include <bsd.port.mk>
