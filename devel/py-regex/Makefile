# $OpenBSD: Makefile,v 1.3 2021/11/02 00:01:00 sthen Exp $

COMMENT =		alternative regular expression module to replace re

MODPY_EGG_VERSION =	2020.11.13
DISTNAME =		regex-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

HOMEPAGE =		https://bitbucket.org/mrabarnett/mrab-regex

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += pthread

MODULES =	lang/python

FLAVORS =	python3
FLAVOR =	python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
NO_TEST =		Yes

.include <bsd.port.mk>
