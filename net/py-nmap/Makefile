# $OpenBSD: Makefile,v 1.3 2011/03/14 09:17:01 sthen Exp $

COMMENT =		python interface to the nmap scan data

MODPY_EGG_VERSION =	0.1.4
DISTNAME =		python-nmap-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/python/py/}
REVISION =		0
CATEGORIES =		net

HOMEPAGE =		http://xael.org/norman/python/python-nmap/
MASTER_SITES =		${HOMEPAGE}

MAINTAINER = 		Remi Pointel <remi.pointel@xiri.fr>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/python

RUN_DEPENDS =		net/nmap

NO_REGRESS =		Yes

.include <bsd.port.mk>
