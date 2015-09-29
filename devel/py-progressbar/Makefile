# $OpenBSD: Makefile,v 1.10 2015/09/29 10:52:11 sthen Exp $

COMMENT =		text progressbar library for python

MODPY_EGG_VERSION =	2.3
DISTNAME =		progressbar-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		3
CATEGORIES =		devel

HOMEPAGE =		https://code.google.com/p/python-progressbar/
MASTER_SITES =		https://python-progressbar.googlecode.com/files/

MAINTAINER = 		Remi Pointel <rpointel@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS = Yes

NO_TEST =		Yes

.include <bsd.port.mk>
