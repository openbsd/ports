# $OpenBSD: Makefile,v 1.2 2006/04/06 18:22:19 steven Exp $

COMMENT=	"abstract Class::DBI's SQL with SQL::Abstract"

DISTNAME=	Class-DBI-AbstractSearch-0.07
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl5

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Class/}

CONFIGURE_STYLE=perl

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::databases/p5-Class-DBI \
		::databases/p5-SQL-Abstract-Limit
REGRESS_DEPENDS=::databases/p5-DBD-SQLite

PKG_ARCH=	*

.include <bsd.port.mk>
