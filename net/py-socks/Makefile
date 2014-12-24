# $OpenBSD: Makefile,v 1.1.1.1 2014/12/24 13:17:58 jca Exp $

COMMENT =		Python module for working with SOCKS proxies

MODPY_EGG_VERSION =	1.5.0
GH_ACCOUNT =		Anorov
GH_PROJECT =		PySocks
GH_TAGNAME =		${MODPY_EGG_VERSION}
GH_COMMIT =		db007e76693df9780ded36579fb574a5eec89d1b
DISTNAME =		${GH_PROJECT}-${MODPY_EGG_VERSION}
PKGNAME =		py-socks-${MODPY_EGG_VERSION}

CATEGORIES =		net

HOMEPAGE =		https://github.com/Anorov/PySocks

# BSD 3-clause
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

FLAVORS =		python3

NO_TEST =		Yes

.include <bsd.port.mk>
