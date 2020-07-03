# $OpenBSD: Makefile,v 1.8 2020/07/03 21:13:07 sthen Exp $

COMMENT =		scp module for Paramiko

MODPY_EGG_VERSION =	0.13.2
DISTNAME =		scp-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		security

HOMEPAGE =		https://github.com/jbardin/scp.py

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPL
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
