# $OpenBSD: Makefile,v 1.27 2014/07/10 11:06:15 rpe Exp $

COMMENT =		Python interface to Redis

MODPY_EGG_VERSION =	2.9.1

GH_ACCOUNT =		andymccurdy
GH_PROJECT =		redis-py
GH_TAGNAME =		${MODPY_EGG_VERSION}
GH_COMMIT =		91a0b8b13b46bd8ea99b61823860ce9c8c3b67f6

DISTNAME =		${GH_PROJECT}-${MODPY_EGG_VERSION}
PKGNAME =		py-redis-${MODPY_EGG_VERSION}
CATEGORIES =		databases

HOMEPAGE =		https://github.com/andymccurdy/redis-py/

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
