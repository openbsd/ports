COMMENT =		Python port of libaxolotl

MODPY_DISTV =	0.2.3
DISTNAME =		python-axolotl-${MODPY_DISTV}
PKGNAME =		py-axolotl-${MODPY_DISTV}
REVISION =		7

CATEGORIES =		security

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =		devel/py-protobuf \
			security/py-axolotl-curve25519 \
			security/py-cryptography

.include <bsd.port.mk>
