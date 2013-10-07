# $OpenBSD: Makefile,v 1.25 2013/10/07 13:47:41 dcoppa Exp $

COMMENT =		Python interface to Redis

MODPY_EGG_VERSION =	2.8.0
DISTNAME =		redis-py-${MODPY_EGG_VERSION}
PKGNAME =		py-redis-${MODPY_EGG_VERSION}
CATEGORIES =		databases

HOMEPAGE =		https://github.com/andymccurdy/redis-py/
MASTER_SITES =		${HOMEPAGE}archive/${MODPY_EGG_VERSION}.tar.gz?bleh=/

MAINTAINER = 		Remi Pointel <rpointel@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

# Be sure to have a redis server running on localhost
TEST_IS_INTERACTIVE =	Yes

TEST_DEPENDS =		databases/redis \
			devel/py-test \
			devel/py-py

.include <bsd.port.mk>
