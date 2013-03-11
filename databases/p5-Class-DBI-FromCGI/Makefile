# $OpenBSD: Makefile,v 1.8 2013/03/11 02:52:06 espie Exp $

COMMENT=	update Class::DBI objects through CGI::Untaint

MODULES=	cpan
DISTNAME=	Class-DBI-FromCGI-1.00
REVISION=	0
CATEGORIES=	databases www
USE_GROFF =	Yes

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-Class-DBI \
		www/p5-CGI-Untaint
TEST_DEPENDS=	databases/p5-DBD-SQLite

.include <bsd.port.mk>
