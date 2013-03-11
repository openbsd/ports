# $OpenBSD: Makefile,v 1.13 2013/03/11 02:52:07 espie Exp $

COMMENT=	Tie hashes to DBI relational databases

MODULES=	cpan
DISTNAME=	Tie-DBI-1.05
CATEGORIES=	databases
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-DBI
TEST_DEPENDS=	databases/p5-DBD-SQLite

.include <bsd.port.mk>
