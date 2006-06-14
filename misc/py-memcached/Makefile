# $OpenBSD: Makefile,v 1.1.1.1 2006/06/14 08:41:14 alek Exp $

COMMENT=	"Python interface to memcached"

DISTNAME=	python-memcached-1.31
PKGNAME=	${DISTNAME:S/python-/py-/}
CATEGORIES=	misc

HOMEPAGE=	http://www.danga.com/memcached/apis.bml

MAINTAINER=	Ben Lovett <ben@tilderoot.com>

# Python
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/python

MASTER_SITES=	ftp://ftp.tummy.com/pub/python-memcached/

NO_REGRESS=	Yes

pre-install:
	@perl -pi -e "s,#!.*python,#!${MODPY_BIN}," ${WRKSRC}/memcache.py

.include <bsd.port.mk>
