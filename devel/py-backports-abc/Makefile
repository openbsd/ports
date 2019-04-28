# $OpenBSD: Makefile,v 1.5 2019/04/28 20:51:30 sthen Exp $

COMMENT =		backport of the 'collections.abc' module

MODPY_EGG_VERSION =	0.5
DISTNAME =		backports_abc-${MODPY_EGG_VERSION}
PKGNAME =		py-backports-abc-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://github.com/cython/backports_abc

# PSFL
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover

.include <bsd.port.mk>
