# $OpenBSD: Makefile,v 1.14 2019/05/08 15:44:45 danj Exp $

COMMENT=	add contextual fetches to DBI

DISTNAME=	DBIx-ContextualFetch-1.03
REVISION=	2
CATEGORIES=	databases
MODULES=	cpan
PKG_ARCH=	*

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-DBI>=1.35
TEST_DEPENDS=databases/p5-DBD-SQLite

.include <bsd.port.mk>
