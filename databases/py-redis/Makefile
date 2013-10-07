# $OpenBSD: Makefile,v 1.24 2013/10/07 13:39:53 rpointel Exp $

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

TEST_DEPENDS =		devel/py-test \
			devel/py-py

.include <bsd.port.mk>
