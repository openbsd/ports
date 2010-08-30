# $OpenBSD: Makefile,v 1.7 2010/08/30 17:11:35 fgsch Exp $

COMMENT =	Python interface to memcached

MODPY_EGG_VERSION = 1.43
DISTNAME =	python-memcached-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:S/python-/py-/}
REVISION =	0
CATEGORIES =	misc

HOMEPAGE =	http://www.tummy.com/Community/software/python-memcached/

MAINTAINER =	Ben Lovett <ben@tilderoot.com>

# Python
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	ftp://ftp.tummy.com/pub/python-memcached/

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

NO_REGRESS =	Yes

pre-install:
	@perl -pi -e "s,#!.*python,#!${MODPY_BIN}," ${WRKSRC}/memcache.py

post-install:
	@rm -rf ${WRKSRC}/python_memcached.egg-info

.include <bsd.port.mk>
