# $OpenBSD: Makefile,v 1.2 2016/01/17 05:38:22 shadchin Exp $

MODPY_EGG_VERSION =	0.4
COMMENT =		backport of the 'collections.abc' module

DISTNAME =		backports_abc-${MODPY_EGG_VERSION}
PKGNAME =		py-backports-abc-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/cython/backports_abc

# PSFL
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_SETUPTOOLS = 	Yes

FLAVORS =		python3
FLAVOR ?=

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover

.include <bsd.port.mk>
