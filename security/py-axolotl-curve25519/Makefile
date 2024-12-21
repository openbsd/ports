COMMENT =		Python curve25519 library with ed25519 signatures

MODPY_DISTV =	0.4.1
POST =			2
DISTNAME =		python-axolotl-curve25519-${MODPY_DISTV}.post${POST}
PKGNAME =		py-axolotl-curve25519-${MODPY_DISTV}pl${POST}
REVISION =		10

CATEGORIES =		security

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PI_DIR =		p/python-axolotl-curve25519
MODPY_PYBUILD =	setuptools

.include <bsd.port.mk>
