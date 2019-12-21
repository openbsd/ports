# $OpenBSD: Makefile,v 1.1.1.1 2019/12/21 14:15:27 jasper Exp $

COMMENT =	C-style structs for Python

MODPY_EGG_VERSION =	1.8

DISTNAME =	cstruct-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
