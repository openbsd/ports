# $OpenBSD: Makefile,v 1.2 2010/12/26 09:39:35 rpointel Exp $

COMMENT =		Python interface to Redis

MODPY_EGG_VERSION =	2.2.1
DISTNAME =		redis-py-${MODPY_EGG_VERSION}
PKGNAME =		py-redis-${MODPY_EGG_VERSION}
CATEGORIES =		databases

HOMEPAGE =		http://github.com/andymccurdy/redis-py/
MASTER_SITES =		http://github.com/downloads/andymccurdy/redis-py/

MAINTAINER = 		Remi Pointel <remi.pointel@xiri.fr>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

# avoid possible conflict with the databases/redis distfile
DIST_SUBDIR =           py-redis
WRKDIST =		${WRKDIR}/redis-${MODPY_EGG_VERSION}

NO_REGRESS =		Yes

.include <bsd.port.mk>
