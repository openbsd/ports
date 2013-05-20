# $OpenBSD: Makefile,v 1.21 2013/05/20 06:52:52 dcoppa Exp $

COMMENT =		Python interface to Redis

MODPY_EGG_VERSION =	2.7.5
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

MODPY_BADEGGS =		redis

TEST_DEPENDS =		databases/redis

# Be sure you have a redis server running on localhost
TEST_IS_INTERACTIVE =	Yes

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} ./run_tests

.include <bsd.port.mk>
