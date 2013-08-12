# $OpenBSD: Makefile,v 1.13 2013/08/12 04:11:20 robert Exp $

COMMENT=	database abstraction layer for PHP

V=		1.4.1
DISTNAME=	MDB2_Driver_mysql-${V}
PKGNAME=	pear-MDB2-mysql-${V}
REVISION=	7
CATEGORIES=	net databases

MODULES=	lang/php www/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/pear-MDB2>=2.4.1 \
		lang/php/${MODPHP_VERSION},-mysql


.include <bsd.port.mk>
