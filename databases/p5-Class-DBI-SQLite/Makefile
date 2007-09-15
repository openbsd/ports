# $OpenBSD: Makefile,v 1.4 2007/09/15 20:34:01 simon Exp $

COMMENT=	extensions to Class::DBI for SQLite

MODULES=	cpan
DISTNAME=	Class-DBI-SQLite-0.11
CATEGORIES=	databases

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::databases/p5-Class-DBI \
		::databases/p5-DBD-SQLite

.include <bsd.port.mk>
