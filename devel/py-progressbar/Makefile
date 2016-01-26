# $OpenBSD: Makefile,v 1.12 2016/01/26 13:29:11 sthen Exp $

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
MASTER_SITES =		https://python-progressbar.googlecode.com/files/
#MODPY_PI =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
