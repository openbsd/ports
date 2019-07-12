# $OpenBSD: Makefile,v 1.3 2019/07/12 20:45:46 sthen Exp $

COMMENT =		symbolic constants in Python

MODPY_EGG_VERSION =	15.1.0

DISTNAME =		constantly-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

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
