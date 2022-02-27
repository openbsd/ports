# $OpenBSD: Makefile,v 1.4 2022/02/27 13:40:32 sthen Exp $

COMMENT =		alternative regular expression module to replace re

MODPY_EGG_VERSION =	2022.1.18
DISTNAME =		regex-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/mrabarnett/mrab-regex

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += pthread

MODULES =	lang/python

FLAVORS =	python3
FLAVOR =	python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST_ARGS =	-v regex_3

.include <bsd.port.mk>
