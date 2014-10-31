# $OpenBSD: Makefile,v 1.8 2014/10/31 12:21:26 jasper Exp $

COMMENT =		python interface to the nmap scan data

MODPY_EGG_VERSION =	0.1.4
DISTNAME =		python-nmap-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/python/py/}
REVISION =		4
CATEGORIES =		net

HOMEPAGE =		http://xael.org/norman/python/python-nmap/
MASTER_SITES =		${HOMEPAGE}

MAINTAINER = 		Remi Pointel <rpointel@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

RUN_DEPENDS =		net/nmap

NO_TEST =		Yes

.include <bsd.port.mk>
