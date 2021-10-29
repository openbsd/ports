# $OpenBSD: Makefile,v 1.21 2021/10/29 15:38:44 sthen Exp $

COMMENT =		ISO 8601 date/time/duration parser and formater

MODPY_EGG_VERSION =	0.6.0
DISTNAME =		isodate-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		3

CATEGORIES =		devel

# BSD
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =	python3

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
