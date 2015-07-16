# $OpenBSD: Makefile,v 1.13 2015/07/16 21:27:41 ajacoutot Exp $

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

MODPY_SETUPTOOLS =	Yes

NO_TEST =	Yes

FLAVORS =	python3
FLAVOR ?=

pre-install:
	@perl -pi -e "s,#!.*python,#!${MODPY_BIN}," ${WRKSRC}/memcache.py

post-install:
	rm -r ${WRKSRC}/python_memcached.egg-info

.include <bsd.port.mk>
