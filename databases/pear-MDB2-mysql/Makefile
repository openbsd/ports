# $OpenBSD: Makefile,v 1.7 2010/11/26 07:18:59 espie Exp $

COMMENT=	database abstraction layer for PHP

V=		1.4.1
DISTNAME=	MDB2_Driver_mysql-${V}
PKGNAME=	pear-MDB2-mysql-${V}
REVISION =	2
CATEGORIES=	net databases

MODULES=	www/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	databases/pear-MDB2>=2.4.1 \
		www/php5/extensions,-mysql


.include <bsd.port.mk>
