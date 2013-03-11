# $OpenBSD: Makefile,v 1.20 2013/03/11 02:52:07 espie Exp $

COMMENT =		Python interface to Redis

MODPY_EGG_VERSION =	2.7.2
DISTNAME =		redis-${MODPY_EGG_VERSION}
PKGNAME =		py-redis-${MODPY_EGG_VERSION}
CATEGORIES =		databases

HOMEPAGE =		http://github.com/andymccurdy/redis-py/
MASTER_SITES =		http://github.com/downloads/andymccurdy/redis-py/

MAINTAINER = 		Remi Pointel <rpointel@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

# avoid possible conflict with the databases/redis distfile
DIST_SUBDIR =           py-redis
WRKDIST =		${WRKDIR}/redis-${MODPY_EGG_VERSION}

TEST_DEPENDS =	databases/redis

TEST_IS_INTERACTIVE = Yes # be sure you have a redis server running on localhost

.include <bsd.port.mk>
