# $OpenBSD: Makefile,v 1.19 2019/07/12 20:43:55 sthen Exp $

COMMENT=	extensions to Class::DBI for MySQL

MODULES=	cpan databases/mariadb
PKG_ARCH=	*
DISTNAME=	Class-DBI-mysql-1.00
REVISION=	4
CATEGORIES=	databases

# Same as Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	databases/p5-Class-DBI \
		databases/p5-DBD-mysql

.include <bsd.port.mk>
