# $OpenBSD: Makefile,v 1.18 2019/05/08 15:44:45 danj Exp $

COMMENT=	extensions to Class::DBI for MySQL

MODULES=	cpan databases/mariadb
PKG_ARCH=	*
DISTNAME=	Class-DBI-mysql-1.00
REVISION=	4
CATEGORIES=	databases

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-Class-DBI \
		databases/p5-DBD-mysql

.include <bsd.port.mk>
