# $OpenBSD: Makefile,v 1.5 2021/05/21 19:50:25 kmos Exp $

COMMENT =		testing library for Python

MODPY_EGG_VERSION =	0.10.2
DISTNAME =		flexmock-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		devel

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
