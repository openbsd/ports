# $OpenBSD: Makefile,v 1.7 2011/09/16 09:24:55 espie Exp $

COMMENT =		text progressbar library for python

MODPY_EGG_VERSION =	2.3
DISTNAME =		progressbar-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1
CATEGORIES =		devel

HOMEPAGE =		http://code.google.com/p/python-progressbar/
MASTER_SITES =		http://python-progressbar.googlecode.com/files/

MAINTAINER = 		Remi Pointel <rpointel@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS = Yes

NO_REGRESS =		Yes

.include <bsd.port.mk>
