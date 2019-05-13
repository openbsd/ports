# $OpenBSD: Makefile,v 1.5 2019/05/13 18:06:43 danj Exp $

COMMENT =		Python 3.5 configparser for Python 2.6 - 3.5

MODPY_EGG_VERSION =	3.5.0
DISTNAME =		configparser-${MODPY_EGG_VERSION}
PKGNAME =		py-configparser-${MODPY_EGG_VERSION}
EPOCH =			0
CATEGORIES =		devel
REVISION =		0

HOMEPAGE =		https://bitbucket.org/ambv/configparser

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-backports

MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

.include <bsd.port.mk>
