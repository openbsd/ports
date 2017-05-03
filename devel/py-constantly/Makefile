# $OpenBSD: Makefile,v 1.1.1.1 2017/05/03 12:07:02 landry Exp $

COMMENT =		symbolic constants in Python

MODPY_EGG_VERSION =	15.1.0

DISTNAME =		constantly-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
