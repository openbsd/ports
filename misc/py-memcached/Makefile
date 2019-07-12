# $OpenBSD: Makefile,v 1.20 2019/07/12 20:47:53 sthen Exp $

COMMENT =	Python interface to memcached

MODPY_EGG_VERSION = 1.54
DISTNAME =	python-memcached-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:S/python-/py-/}
CATEGORIES =	misc
REVISION =	3

HOMEPAGE =	http://www.tummy.com/Community/software/python-memcached/

# Python
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_ADJ_FILES =	memcache.py
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

NO_TEST =	Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
