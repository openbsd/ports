# $OpenBSD: Makefile,v 1.6 2010/09/01 09:17:43 sthen Exp $

COMMENT=	add contextual fetches to DBI

DISTNAME=	DBIx-ContextualFetch-1.03
REVISION=	0
CATEGORIES=	databases
MODULES=	cpan

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-DBI->=1.35:databases/p5-DBI
REGRESS_DEPENDS=::databases/p5-DBD-SQLite

.include <bsd.port.mk>
