# $OpenBSD: Makefile,v 1.5 2016/12/04 06:40:25 shadchin Exp $

COMMENT =		Python module for working with SOCKS proxies

MODPY_EGG_VERSION =	1.6.4
DISTNAME =		PySocks-${MODPY_EGG_VERSION}
PKGNAME =		py-socks-${MODPY_EGG_VERSION}

CATEGORIES =		net

HOMEPAGE =		https://github.com/Anorov/PySocks

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# BSD 3-clause
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
