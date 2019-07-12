# $OpenBSD: Makefile,v 1.12 2019/07/12 20:43:55 sthen Exp $

COMMENT=	update Class::DBI objects through CGI::Untaint

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Class-DBI-FromCGI-1.00
REVISION=	1
CATEGORIES=	databases www

# Same as Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	databases/p5-Class-DBI \
		www/p5-CGI-Untaint
TEST_DEPENDS=	databases/p5-DBD-SQLite

.include <bsd.port.mk>
