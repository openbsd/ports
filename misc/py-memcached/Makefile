# $OpenBSD: Makefile,v 1.21 2020/07/03 21:12:58 sthen Exp $

COMMENT =	Python interface to memcached

MODPY_EGG_VERSION = 1.54
DISTNAME =	python-memcached-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:S/python-/py-/}
CATEGORIES =	misc
REVISION =	4

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
