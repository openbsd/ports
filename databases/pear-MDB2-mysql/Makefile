# $OpenBSD: Makefile,v 1.9 2011/07/22 10:20:10 sthen Exp $

COMMENT=	database abstraction layer for PHP

V=		1.4.1
DISTNAME=	MDB2_Driver_mysql-${V}
PKGNAME=	pear-MDB2-mysql-${V}
REVISION=	4
CATEGORIES=	net databases

MODULES=	lang/php www/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	databases/pear-MDB2>=2.4.1 \
		lang/php/${MODPHP_VERSION},-mysql


.include <bsd.port.mk>
