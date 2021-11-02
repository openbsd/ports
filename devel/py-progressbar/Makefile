# $OpenBSD: Makefile,v 1.20 2021/11/02 00:00:59 sthen Exp $

COMMENT =		text progressbar library for python

MODPY_EGG_VERSION =    2.5

DISTNAME =		progressbar-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		4

HOMEPAGE =		https://github.com/niltonvolpato/python-progressbar

MAINTAINER = 		Remi Pointel <rpointel@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =        Yes

FLAVORS =	python3
FLAVOR =	python3

NO_TEST =		Yes

.include <bsd.port.mk>
