# $OpenBSD: Makefile,v 1.3 2020/07/03 21:12:47 sthen Exp $

COMMENT =	module that multiplexes interactions with lists of objects

MODPY_EGG_VERSION =	0.08
DISTNAME =	mulpyplexer-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD
PERMIT_PACKAGE =Yes

MODULES =	lang/python

MODPY_PI =	Yes

FLAVORS =	python3
FLAVOR ?=

# No tests - no upstream?

.include <bsd.port.mk>
