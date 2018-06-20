# $OpenBSD: Makefile,v 1.1.1.1 2018/06/20 11:33:20 feinerer Exp $

COMMENT =		Python curve25519 library with ed25519 signatures

MODPY_EGG_VERSION =	0.4.1
POST =			2
DISTNAME =		python-axolotl-curve25519-${MODPY_EGG_VERSION}.post${POST}
PKGNAME =		py-axolotl-curve25519-${MODPY_EGG_VERSION}pl${POST}

CATEGORIES =		security

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PI_DIR =		p/python-axolotl-curve25519
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
