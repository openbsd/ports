# $OpenBSD: Makefile,v 1.1.1.1 2010/10/13 08:55:11 dcoppa Exp $

COMMENT =		Python interface to Redis

MODPY_EGG_VERSION =	2.0.0
DISTNAME =		redis-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
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

NO_REGRESS =		Yes

.include <bsd.port.mk>
