# $OpenBSD: Makefile,v 1.14 2015/07/16 21:30:05 ajacoutot Exp $

COMMENT =	Python interface to memcached

MODPY_EGG_VERSION = 1.54
DISTNAME =	python-memcached-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:S/python-/py-/}
CATEGORIES =	misc

HOMEPAGE =	http://www.tummy.com/Community/software/python-memcached/

MAINTAINER =	Ben Lovett <ben@tilderoot.com>

# Python
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	ftp://ftp.tummy.com/pub/python-memcached/

MODULES =	lang/python

MODPY_ADJ_FILES =	memcache.py
MODPY_SETUPTOOLS =	Yes

NO_TEST =	Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
