# $OpenBSD: Makefile,v 1.1.1.1 2021/02/16 20:27:37 rsadowski Exp $

COMMENT =		alternative regular expression module to replace re

MODPY_EGG_VERSION =	2020.11.13
DISTNAME =		regex-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		https://bitbucket.org/mrabarnett/mrab-regex

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += pthread

COMPILER =	base-clang ports-gcc

MODULES =	lang/python

FLAVORS =	python3
FLAVOR =	python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
NO_TESTS =		Yes

.include <bsd.port.mk>
