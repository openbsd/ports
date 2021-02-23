# $OpenBSD: Makefile,v 1.7 2021/02/23 19:39:18 sthen Exp $

COMMENT =		Python 3.5 configparser for Python 2.6 - 3.5

MODPY_EGG_VERSION =	3.5.0
DISTNAME =		configparser-${MODPY_EGG_VERSION}
PKGNAME =		py-configparser-${MODPY_EGG_VERSION}
EPOCH =			0
CATEGORIES =		devel
REVISION =		0

HOMEPAGE =		https://bitbucket.org/ambv/configparser

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

RUN_DEPENDS =		devel/py-backports

MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

.include <bsd.port.mk>
