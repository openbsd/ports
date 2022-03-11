COMMENT =		Python port of libaxolotl

MODPY_EGG_VERSION =	0.2.3
DISTNAME =		python-axolotl-${MODPY_EGG_VERSION}
PKGNAME =		py-axolotl-${MODPY_EGG_VERSION}
REVISION =		2

CATEGORIES =		security

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		devel/py-protobuf${MODPY_FLAVOR} \
			security/py-axolotl-curve25519${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR}

.include <bsd.port.mk>
