COMMENT =		Gajim's fork of py-axolotl

MODPY_EGG_VERSION =	1.0.1
DISTNAME =		omemo-dr-${MODPY_EGG_VERSION}
PKGNAME =		py-omemo-dr-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		security

MAINTAINER =		Paco Esteban <paco@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		devel/py-protobuf${MODPY_FLAVOR}>=4.21.0 \
			security/py-cryptography${MODPY_FLAVOR}

.include <bsd.port.mk>
