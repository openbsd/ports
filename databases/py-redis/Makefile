# $OpenBSD: Makefile,v 1.36 2020/02/16 13:02:19 sthen Exp $

COMMENT =		Python interface to Redis

MODPY_EGG_VERSION =	3.4.1

GH_ACCOUNT =		andymccurdy
GH_PROJECT =		redis-py
GH_TAGNAME =		${MODPY_EGG_VERSION}

PKGNAME =		py-redis-${MODPY_EGG_VERSION}
CATEGORIES =		databases

HOMEPAGE =		https://github.com/andymccurdy/redis-py/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

# Be sure to have a redis server running on localhost
TEST_IS_INTERACTIVE =	Yes

TEST_DEPENDS =		databases/redis \
			devel/py-mock${MODPY_FLAVOR}

.include <bsd.port.mk>
