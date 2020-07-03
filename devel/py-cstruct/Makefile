# $OpenBSD: Makefile,v 1.2 2020/07/03 21:12:43 sthen Exp $

COMMENT =	C-style structs for Python

MODPY_EGG_VERSION =	1.8

DISTNAME =	cstruct-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

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
