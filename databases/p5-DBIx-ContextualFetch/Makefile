# $OpenBSD: Makefile,v 1.9 2010/11/26 07:18:59 espie Exp $

COMMENT=	add contextual fetches to DBI

DISTNAME=	DBIx-ContextualFetch-1.03
REVISION=	0
CATEGORIES=	databases
MODULES=	cpan
USE_GROFF =	Yes

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	databases/p5-DBI>=1.35
REGRESS_DEPENDS=databases/p5-DBD-SQLite

.include <bsd.port.mk>
