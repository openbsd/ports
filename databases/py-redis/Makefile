# $OpenBSD: Makefile,v 1.18 2012/10/26 06:52:26 rpointel Exp $

COMMENT =		Python interface to Redis

MODPY_EGG_VERSION =	2.7.1
DISTNAME =		redis-${MODPY_EGG_VERSION}
PKGNAME =		py-redis-${MODPY_EGG_VERSION}
CATEGORIES =		databases

HOMEPAGE =		http://github.com/andymccurdy/redis-py/
MASTER_SITES =		http://github.com/downloads/andymccurdy/redis-py/

MAINTAINER = 		Remi Pointel <rpointel@openbsd.org>

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

REGRESS_DEPENDS =	databases/redis

REGRESS_IS_INTERACTIVE = Yes # be sure you have a redis server running on localhost

.include <bsd.port.mk>
