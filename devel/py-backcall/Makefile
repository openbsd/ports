# $OpenBSD: Makefile,v 1.2 2020/07/03 21:12:40 sthen Exp $

COMMENT =		specifications for callback functions passed to an API

MODPY_EGG_VERSION =	0.1.0
DISTNAME =		backcall-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
