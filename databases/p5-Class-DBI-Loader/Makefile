# $OpenBSD: Makefile,v 1.5 2007/09/15 20:34:01 simon Exp $

COMMENT=	dynamic definition of Class::DBI sub classes

MODULES=	cpan
DISTNAME=	Class-DBI-Loader-0.32
CATEGORIES=	databases

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::databases/p5-Class-DBI
REGRESS_DEPENDS=::databases/p5-Class-DBI-SQLite

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
