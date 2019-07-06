# $OpenBSD: Makefile,v 1.1.1.1 2019/07/06 19:42:40 jasper Exp $

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

NO_TEST =	Yes

.include <bsd.port.mk>
