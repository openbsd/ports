# $OpenBSD: Makefile,v 1.15 2019/04/28 20:51:36 sthen Exp $

COMMENT =		text progressbar library for python

MODPY_EGG_VERSION =    2.5

DISTNAME =		progressbar-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

HOMEPAGE =		https://github.com/niltonvolpato/python-progressbar

MAINTAINER = 		Remi Pointel <rpointel@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =        Yes

FLAVORS =	python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
