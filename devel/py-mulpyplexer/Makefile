# $OpenBSD: Makefile,v 1.2 2019/11/23 19:55:42 kmos Exp $

COMMENT =	module that multiplexes interactions with lists of objects

MODPY_EGG_VERSION =	0.08
DISTNAME =	mulpyplexer-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

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
