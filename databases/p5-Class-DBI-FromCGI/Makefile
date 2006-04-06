# $OpenBSD: Makefile,v 1.2 2006/04/06 18:23:36 steven Exp $

COMMENT=	"update Class::DBI objects through CGI::Untaint"

DISTNAME=	Class-DBI-FromCGI-1.00
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl5 www

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
		::www/p5-CGI-Untaint
REGRESS_DEPENDS=::databases/p5-DBD-SQLite

PKG_ARCH=	*

.include <bsd.port.mk>
