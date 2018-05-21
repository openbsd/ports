# $OpenBSD: Makefile,v 1.17 2018/05/21 22:18:01 sthen Exp $

COMMENT=	database abstraction layer for PHP

V=		1.4.1
DISTNAME=	MDB2_Driver_mysql-${V}
PKGNAME=	pear-MDB2-mysql-${V}
REVISION=	10
CATEGORIES=	net databases

MODULES=	lang/php www/pear
# php-mysql is not available in 7.x
MODPHP_VERSION=	5.6

# PHP License
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/pear-MDB2>=2.4.1 \
		lang/php/${MODPHP_VERSION},-mysql

.include <bsd.port.mk>
