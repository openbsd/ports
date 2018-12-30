# $OpenBSD: Makefile,v 1.14 2018/12/30 07:15:27 rpointel Exp $

COMMENT =		text progressbar library for python

MODPY_EGG_VERSION =    2.5

DISTNAME =		progressbar-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

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
