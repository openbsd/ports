# $OpenBSD: Makefile,v 1.4 2007/09/15 20:34:01 simon Exp $

COMMENT=	more complex retrieve_all() for Class::DBI

MODULES=	cpan
DISTNAME=	Class-DBI-Plugin-RetrieveAll-1.04
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
