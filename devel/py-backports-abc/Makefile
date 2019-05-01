# $OpenBSD: Makefile,v 1.6 2019/05/01 13:49:52 kmos Exp $

COMMENT =		backport of the 'collections.abc' module

MODPY_EGG_VERSION =	0.5
DISTNAME =		backports_abc-${MODPY_EGG_VERSION}
PKGNAME =		py-backports-abc-${MODPY_EGG_VERSION}
REVISION =		2

CATEGORIES =		devel

HOMEPAGE =		https://github.com/cython/backports_abc

# PSFL
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

# No python3 FLAVOR - port backports functionality to python 2.x

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover

.include <bsd.port.mk>
