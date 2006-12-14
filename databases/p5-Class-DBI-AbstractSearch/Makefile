# $OpenBSD: Makefile,v 1.3 2006/12/14 18:01:23 dassow Exp $

COMMENT=	"abstract Class::DBI's SQL with SQL::Abstract"

MODULES=	cpan
DISTNAME=	Class-DBI-AbstractSearch-0.07
CATEGORIES=	databases

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::databases/p5-Class-DBI \
		::databases/p5-SQL-Abstract-Limit
REGRESS_DEPENDS=::databases/p5-DBD-SQLite

.include <bsd.port.mk>
