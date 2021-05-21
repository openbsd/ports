# $OpenBSD: Makefile,v 1.22 2021/05/21 19:50:32 kmos Exp $

COMMENT =	Python interface to memcached

MODPY_EGG_VERSION = 1.54
DISTNAME =	python-memcached-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:S/python-/py-/}
CATEGORIES =	misc
REVISION =	5

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
