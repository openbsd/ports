# $OpenBSD: Makefile,v 1.3 2021/05/21 19:50:24 kmos Exp $

COMMENT =	C-style structs for Python

MODPY_EGG_VERSION =	1.8

DISTNAME =	cstruct-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

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
