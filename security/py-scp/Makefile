# $OpenBSD: Makefile,v 1.2 2018/05/07 18:08:15 jasper Exp $

COMMENT =		scp module for Paramiko

MODPY_EGG_VERSION =	0.11.0
DISTNAME =		scp-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		security

HOMEPAGE =		https://github.com/jbardin/scp.py

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
