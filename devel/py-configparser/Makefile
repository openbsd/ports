# $OpenBSD: Makefile,v 1.4 2016/10/02 15:12:36 shadchin Exp $

COMMENT =		Python 3.5 configparser for Python 2.6 - 3.5

MODPY_EGG_VERSION =	3.5.0
DISTNAME =		configparser-${MODPY_EGG_VERSION}
PKGNAME =		py-configparser-${MODPY_EGG_VERSION}
EPOCH =			0
CATEGORIES =		devel

HOMEPAGE =		https://bitbucket.org/ambv/configparser

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-backports

MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

.include <bsd.port.mk>
