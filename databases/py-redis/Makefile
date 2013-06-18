# $OpenBSD: Makefile,v 1.22 2013/06/18 11:47:06 dcoppa Exp $

COMMENT =		Python interface to Redis

MODPY_EGG_VERSION =	2.7.6
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

# XXX: test suite requires newer devel/py-test and devel/py-py
NO_TEST =		Yes

.include <bsd.port.mk>
