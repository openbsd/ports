# $OpenBSD: Makefile,v 1.1.1.1 2010/10/28 16:10:24 edd Exp $

COMMENT =		Python last.fm library

MODPY_EGG_VERSION =	0.4.30
DISTNAME =		pylast-${MODPY_EGG_VERSION}
PKGNAME =		py-last-${MODPY_EGG_VERSION}
CATEGORIES =		audio net

HOMEPAGE =		http://code.google.com/p/pylast/

MAINTAINER = 		Edd Barrett <edd@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=p/pylast/}

MODULES =	lang/python

NO_REGRESS =	Yes

.include <bsd.port.mk>
