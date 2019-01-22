# $OpenBSD: Makefile,v 1.2 2019/01/22 11:18:53 danj Exp $

COMMENT =	utility for gitignore style pattern matching of file paths

MODPY_EGG_VERSION = 0.5.9
DISTNAME =	pathspec-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

# Mozilla Public License v2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
