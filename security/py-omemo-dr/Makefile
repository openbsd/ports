COMMENT =		Gajim's fork of py-axolotl

MODPY_DISTV =	1.0.1
DISTNAME =		omemo-dr-${MODPY_DISTV}
PKGNAME =		py-omemo-dr-${MODPY_DISTV}
REVISION =		1

CATEGORIES =		security

MAINTAINER =		Paco Esteban <paco@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-protobuf>=4.21.0 \
			security/py-cryptography

.include <bsd.port.mk>
