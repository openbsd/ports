# $OpenBSD: Makefile,v 1.14 2014/12/06 15:58:59 benoit Exp $

COMMENT=	Tie hashes to DBI relational databases

MODULES=	cpan
DISTNAME =	Tie-DBI-1.06
CATEGORIES=	databases

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-DBI
TEST_DEPENDS=	databases/p5-DBD-SQLite

.include <bsd.port.mk>
