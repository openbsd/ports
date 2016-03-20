# $OpenBSD: Makefile,v 1.10 2016/03/20 19:56:09 naddy Exp $

COMMENT=	update Class::DBI objects through CGI::Untaint

MODULES=	cpan
PKG_ARCH=	*
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
