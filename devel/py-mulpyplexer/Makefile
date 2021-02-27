# $OpenBSD: Makefile,v 1.5 2021/02/27 11:13:35 ajacoutot Exp $

COMMENT =	module that multiplexes interactions with lists of objects

MODPY_EGG_VERSION =	0.09
DISTNAME =	mulpyplexer-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

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
