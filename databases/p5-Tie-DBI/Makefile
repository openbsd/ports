# $OpenBSD: Makefile,v 1.15 2016/03/20 19:56:12 naddy Exp $

COMMENT=	Tie hashes to DBI relational databases

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Tie-DBI-1.06
CATEGORIES=	databases

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-DBI
TEST_DEPENDS=	databases/p5-DBD-SQLite

.include <bsd.port.mk>
