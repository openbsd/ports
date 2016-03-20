# $OpenBSD: Makefile,v 1.13 2016/03/20 19:56:09 naddy Exp $

COMMENT=	determine type information for columns

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Class-DBI-Plugin-Type-0.02
REVISION=	2
CATEGORIES=	databases

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-Class-DBI
TEST_DEPENDS=	databases/p5-DBD-SQLite

.include <bsd.port.mk>
