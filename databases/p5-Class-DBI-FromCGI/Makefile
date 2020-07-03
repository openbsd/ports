# $OpenBSD: Makefile,v 1.13 2020/07/03 21:44:34 sthen Exp $

COMMENT=	update Class::DBI objects through CGI::Untaint

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Class-DBI-FromCGI-1.00
REVISION=	2
CATEGORIES=	databases www

# Same as Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	databases/p5-Class-DBI \
		www/p5-CGI-Untaint
TEST_DEPENDS=	databases/p5-DBD-SQLite

.include <bsd.port.mk>
