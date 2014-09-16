# $OpenBSD: Makefile,v 1.28 2014/09/16 07:14:14 dcoppa Exp $

COMMENT =		Python interface to Redis

MODPY_EGG_VERSION =	2.10.3

GH_ACCOUNT =		andymccurdy
GH_PROJECT =		redis-py
GH_TAGNAME =		${MODPY_EGG_VERSION}
GH_COMMIT =		4d0b0afe9c9a431ed50c3e9fb95a0aa88b1f1038

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
			devel/py-py \
			devel/py-test>=2.5.0

.include <bsd.port.mk>
