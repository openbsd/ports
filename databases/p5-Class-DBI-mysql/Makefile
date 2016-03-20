# $OpenBSD: Makefile,v 1.17 2016/03/20 19:56:09 naddy Exp $

COMMENT=	extensions to Class::DBI for MySQL

MODULES=	cpan databases/mariadb
PKG_ARCH=	*
DISTNAME=	Class-DBI-mysql-1.00
REVISION=	3
CATEGORIES=	databases

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-Class-DBI \
		databases/p5-DBD-mysql

.include <bsd.port.mk>
