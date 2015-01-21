# $OpenBSD: Makefile,v 1.9 2015/01/21 14:05:46 sthen Exp $

COMMENT=	update Class::DBI objects through CGI::Untaint

MODULES=	cpan
DISTNAME=	Class-DBI-FromCGI-1.00
REVISION=	0
CATEGORIES=	databases www

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-Class-DBI \
		www/p5-CGI-Untaint
TEST_DEPENDS=	databases/p5-DBD-SQLite

.include <bsd.port.mk>
