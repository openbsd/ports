# $OpenBSD: Makefile,v 1.4 2011/05/04 09:39:52 jasper Exp $

COMMENT =		text progressbar library for python

MODPY_EGG_VERSION =	2.2
DISTNAME =		progressbar-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

HOMEPAGE =		http://code.google.com/p/python-progressbar/
MASTER_SITES =		${MASTER_SITE_PYPI:=p/progressbar/}

MAINTAINER = 		Remi Pointel <remi.pointel@xiri.fr>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/python

NO_REGRESS =		Yes

.include <bsd.port.mk>
