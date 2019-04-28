# $OpenBSD: Makefile,v 1.2 2019/04/28 20:51:51 sthen Exp $

COMMENT =		Python port of libaxolotl

MODPY_EGG_VERSION =	0.1.42
DISTNAME =		python-axolotl-${MODPY_EGG_VERSION}
PKGNAME =		py-axolotl-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		security

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-protobuf${MODPY_FLAVOR} \
			security/py-axolotl-curve25519${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
