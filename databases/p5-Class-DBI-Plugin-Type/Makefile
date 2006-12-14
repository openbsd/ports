# $OpenBSD: Makefile,v 1.3 2006/12/14 18:30:36 dassow Exp $

COMMENT=	"determine type information for columns "

MODULES=	cpan
DISTNAME=	Class-DBI-Plugin-Type-0.02
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
