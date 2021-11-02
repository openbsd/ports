# $OpenBSD: Makefile,v 1.12 2021/11/02 00:02:19 sthen Exp $

COMMENT =		scp module for Paramiko

MODPY_EGG_VERSION =	0.13.6
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
FLAVOR =		python3

RUN_DEPENDS =		security/py-paramiko${MODPY_FLAVOR}

.include <bsd.port.mk>
