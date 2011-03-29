# $OpenBSD: Makefile,v 1.12 2011/03/29 16:55:59 jasper Exp $

COMMENT=	Tie hashes to DBI relational databases

MODULES=	cpan
DISTNAME=	Tie-DBI-1.05
CATEGORIES=	databases
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	databases/p5-DBI
REGRESS_DEPENDS=	databases/p5-DBD-SQLite

.include <bsd.port.mk>
