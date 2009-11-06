# $OpenBSD: Makefile,v 1.5 2009/11/06 09:01:07 jasper Exp $

COMMENT=	database abstraction layer for PHP

V=		1.4.1
DISTNAME=	MDB2_Driver_mysql-${V}
PKGNAME=	pear-MDB2-mysql-${V}p2
CATEGORIES=	net databases

MODULES=	www/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:pear-MDB2->=2.4.1:databases/pear-MDB2 \
		:php5-mysql-*:www/php5/extensions,-mysql


.include <bsd.port.mk>
