# $OpenBSD: Makefile,v 1.7 2010/09/01 09:17:43 sthen Exp $

COMMENT=	determine type information for columns

MODULES=	cpan
DISTNAME=	Class-DBI-Plugin-Type-0.02
REVISION=	1
CATEGORIES=	databases

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::databases/p5-Class-DBI
REGRESS_DEPENDS=::databases/p5-DBD-SQLite

.include <bsd.port.mk>
