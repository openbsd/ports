# $OpenBSD: Makefile,v 1.6 2019/11/08 14:54:50 kmos Exp $

COMMENT =		parser for and generator of the Git fastimport format
DISTNAME =		fastimport-${MODPY_EGG_VERSION}
PKGNAME =		py-fastimport-${MODPY_EGG_VERSION}
CATEGORIES =		devel
HOMEPAGE =		https://github.com/jelmer/python-fastimport
REVISION =		2

# GPLv2+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_EGG_VERSION =	0.9.6
MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	fastimport

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
