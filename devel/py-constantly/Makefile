# $OpenBSD: Makefile,v 1.4 2020/07/03 21:12:42 sthen Exp $

COMMENT =		symbolic constants in Python

MODPY_EGG_VERSION =	15.1.0

DISTNAME =		constantly-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
