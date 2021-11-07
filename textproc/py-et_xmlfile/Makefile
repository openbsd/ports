# $OpenBSD: Makefile,v 1.4 2021/11/07 08:37:46 sthen Exp $

COMMENT =	low memory library for creating large XML files

MODPY_EGG_VERSION =	1.1.0

DISTNAME =	et_xmlfile-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	textproc

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR =	python3

# not in the distfile
NO_TEST =	Yes

.include <bsd.port.mk>
