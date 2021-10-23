# $OpenBSD: Makefile,v 1.11 2021/09/02 13:06:03 sthen Exp $

COMMENT =		scp module for Paramiko

MODPY_EGG_VERSION =	0.13.6
DISTNAME =		scp-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

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
