# $OpenBSD: Makefile,v 1.11 2019/05/08 15:44:45 danj Exp $

COMMENT=	update Class::DBI objects through CGI::Untaint

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Class-DBI-FromCGI-1.00
REVISION=	1
CATEGORIES=	databases www

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-Class-DBI \
		www/p5-CGI-Untaint
TEST_DEPENDS=	databases/p5-DBD-SQLite

.include <bsd.port.mk>
