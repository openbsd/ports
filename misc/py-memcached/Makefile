# $OpenBSD: Makefile,v 1.15 2015/07/17 23:24:22 sthen Exp $

COMMENT =	Python interface to memcached

MODPY_EGG_VERSION = 1.54
DISTNAME =	python-memcached-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:S/python-/py-/}
CATEGORIES =	misc

HOMEPAGE =	http://www.tummy.com/Community/software/python-memcached/

MAINTAINER =	Ben Lovett <ben@tilderoot.com>

# Python
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python

MODPY_ADJ_FILES =	memcache.py
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

NO_TEST =	Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
