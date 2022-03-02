# $OpenBSD: Makefile,v 1.5 2022/03/02 13:00:55 sthen Exp $

COMMENT =		alternative regular expression module to replace re

MODPY_EGG_VERSION =	2022.3.2
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
