# $OpenBSD: Makefile,v 1.1.1.1 2020/06/01 20:53:57 sthen Exp $

COMMENT =	MySQL driver in pure Python

MODPY_EGG_VERSION =	0.9.3

DISTNAME =	PyMySQL-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =	databases

HOMEPAGE =	https://github.com/PyMySQL/PyMySQL/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=	python3

# requires database setup
NO_TEST =	Yes

.include <bsd.port.mk>
