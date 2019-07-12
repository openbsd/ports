# $OpenBSD: Makefile,v 1.35 2019/07/12 20:44:00 sthen Exp $

COMMENT =		Python interface to Redis

MODPY_EGG_VERSION =	2.10.6

GH_ACCOUNT =		andymccurdy
GH_PROJECT =		redis-py
GH_TAGNAME =		${MODPY_EGG_VERSION}
REVISION =		1

DISTNAME =		${GH_PROJECT}-${MODPY_EGG_VERSION}
PKGNAME =		py-redis-${MODPY_EGG_VERSION}
CATEGORIES =		databases

HOMEPAGE =		https://github.com/andymccurdy/redis-py/

MAINTAINER = 		Remi Pointel <rpointel@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes

# Be sure to have a redis server running on localhost
TEST_IS_INTERACTIVE =	Yes

TEST_DEPENDS =		databases/redis \
			devel/py-py${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR}>=2.5.0

.include <bsd.port.mk>
