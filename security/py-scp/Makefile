# $OpenBSD: Makefile,v 1.3 2018/10/23 18:59:56 jasper Exp $

COMMENT =		scp module for Paramiko

MODPY_EGG_VERSION =	0.12.1
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
