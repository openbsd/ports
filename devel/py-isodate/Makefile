# $OpenBSD: Makefile,v 1.16 2019/04/27 23:24:01 sthen Exp $

COMMENT =		ISO 8601 date/time/duration parser and formater

MODPY_EGG_VERSION =	0.6.0
DISTNAME =		isodate-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
