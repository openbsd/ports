# $OpenBSD: Makefile,v 1.13 2016/10/01 11:54:15 naddy Exp $

COMMENT =		text progressbar library for python

MODPY_EGG_VERSION =	2.3
REVISION =		4
DISTNAME =		progressbar-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/niltonvolpato/python-progressbar

MAINTAINER = 		Remi Pointel <rpointel@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

# pypi distfile doesn't match the old googlecode one; switch if updating
MASTER_SITES =		${MASTER_SITE_GOOGLECODE:=python-progressbar/}
#MODPY_PI =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
