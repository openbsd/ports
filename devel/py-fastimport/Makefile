# $OpenBSD: Makefile,v 1.7 2020/05/29 22:51:12 juanfra Exp $

COMMENT =		parser for and generator of the Git fastimport format

MODPY_EGG_VERSION =	0.9.8
DISTNAME =		fastimport-${MODPY_EGG_VERSION}
PKGNAME =		py-fastimport-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/jelmer/python-fastimport

# GPLv2+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	fastimport

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
