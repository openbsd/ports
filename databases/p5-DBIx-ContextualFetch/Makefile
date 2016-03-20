# $OpenBSD: Makefile,v 1.13 2016/03/20 19:56:10 naddy Exp $

COMMENT=	add contextual fetches to DBI

DISTNAME=	DBIx-ContextualFetch-1.03
REVISION=	1
CATEGORIES=	databases
MODULES=	cpan
PKG_ARCH=	*

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-DBI>=1.35
TEST_DEPENDS=databases/p5-DBD-SQLite

.include <bsd.port.mk>
