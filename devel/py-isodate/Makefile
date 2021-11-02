# $OpenBSD: Makefile,v 1.22 2021/11/02 00:00:50 sthen Exp $

COMMENT =		ISO 8601 date/time/duration parser and formater

MODPY_EGG_VERSION =	0.6.0
DISTNAME =		isodate-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		4

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
