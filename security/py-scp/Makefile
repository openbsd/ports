# $OpenBSD: Makefile,v 1.10 2021/05/21 19:50:35 kmos Exp $

COMMENT =		scp module for Paramiko

MODPY_EGG_VERSION =	0.13.3
DISTNAME =		scp-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		security

HOMEPAGE =		https://github.com/jbardin/scp.py

# LGPL
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
