# $OpenBSD: Makefile,v 1.7 2020/07/03 21:12:40 sthen Exp $

COMMENT =	namespace control and lazy-import mechanism for Python

DISTNAME =		apipkg-${MODPY_EGG_VERSION}
MODPY_EGG_VERSION =	1.4
MODPY_PI =		Yes
PKGNAME =		py-${DISTNAME}
REVISION =		3

CATEGORIES =	devel

HOMEPAGE =	https://bitbucket.org/hpk42/apipkg

# MIT
PERMIT_PACKAGE =	Yes

FLAVORS =               python3
FLAVOR ?=

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

.include <bsd.port.mk>
