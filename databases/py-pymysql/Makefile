# $OpenBSD: Makefile,v 1.6 2021/11/02 00:00:16 sthen Exp $

COMMENT =	MySQL driver in pure Python

MODPY_EGG_VERSION =	1.0.2

DISTNAME =	PyMySQL-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION =	0

CATEGORIES =	databases

HOMEPAGE =	https://github.com/PyMySQL/PyMySQL/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR =	python3

# requires database setup
NO_TEST =	Yes

.include <bsd.port.mk>
