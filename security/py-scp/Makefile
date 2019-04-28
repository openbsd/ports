# $OpenBSD: Makefile,v 1.6 2019/04/28 20:51:52 sthen Exp $

COMMENT =		scp module for Paramiko

MODPY_EGG_VERSION =	0.13.2
DISTNAME =		scp-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

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
