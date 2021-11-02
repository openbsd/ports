# $OpenBSD: Makefile,v 1.6 2021/11/02 00:00:51 sthen Exp $

COMMENT =	module that multiplexes interactions with lists of objects

MODPY_EGG_VERSION =	0.09
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
FLAVOR =	python3

# No tests - no upstream?

.include <bsd.port.mk>
