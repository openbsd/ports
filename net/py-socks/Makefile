# $OpenBSD: Makefile,v 1.4 2016/05/22 14:10:37 shadchin Exp $

COMMENT =		Python module for working with SOCKS proxies

MODPY_EGG_VERSION =	1.5.7
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
