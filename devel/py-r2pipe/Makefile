# $OpenBSD: Makefile,v 1.8 2020/10/23 18:06:20 jasper Exp $

COMMENT =	pipe interface for radare2

MODPY_EGG_VERSION =	1.5.0
DISTNAME =	r2pipe-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	https://radare.org/

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=		python3

.include <bsd.port.mk>
