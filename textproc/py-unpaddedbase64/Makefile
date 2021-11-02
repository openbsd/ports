# $OpenBSD: Makefile,v 1.4 2021/11/02 00:02:41 sthen Exp $

COMMENT =	Python module implementing Base64 without "=" padding

MODPY_EGG_VERSION =	1.1.0

GH_ACCOUNT =	matrix-org
GH_PROJECT =	python-unpaddedbase64
GH_TAGNAME =	v${MODPY_EGG_VERSION}
PKGNAME =	py-unpaddedbase64-${MODPY_EGG_VERSION}
REVISION =	2

CATEGORIES =		textproc

MAINTAINER =		Renaud Allard <renaud@allard.it>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
