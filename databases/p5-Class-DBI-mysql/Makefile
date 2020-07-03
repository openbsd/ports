# $OpenBSD: Makefile,v 1.20 2020/07/03 21:44:35 sthen Exp $

COMMENT=	extensions to Class::DBI for MySQL

MODULES=	cpan databases/mariadb
PKG_ARCH=	*
DISTNAME=	Class-DBI-mysql-1.00
REVISION=	5
CATEGORIES=	databases

# Same as Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	databases/p5-Class-DBI \
		databases/p5-DBD-mysql

.include <bsd.port.mk>
