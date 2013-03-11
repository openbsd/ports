# $OpenBSD: Makefile,v 1.7 2013/03/11 11:35:55 espie Exp $

COMMENT =		python interface to the nmap scan data

MODPY_EGG_VERSION =	0.1.4
DISTNAME =		python-nmap-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/python/py/}
REVISION =		3
CATEGORIES =		net

HOMEPAGE =		http://xael.org/norman/python/python-nmap/
MASTER_SITES =		${HOMEPAGE}

MAINTAINER = 		Remi Pointel <remi.pointel@xiri.fr>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

RUN_DEPENDS =		net/nmap

NO_TEST =		Yes

.include <bsd.port.mk>
