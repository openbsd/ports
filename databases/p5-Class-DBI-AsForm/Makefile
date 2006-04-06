# $OpenBSD: Makefile,v 1.2 2006/04/06 18:22:57 steven Exp $

COMMENT=	"produce HTML form elements for database columns"

DISTNAME=	Class-DBI-AsForm-2.42
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www databases perl5

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Class/}

CONFIGURE_STYLE=perl

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::databases/p5-Class-DBI-Plugin-Type \
		::www/p5-HTML-Tree

PKG_ARCH=	*

.include <bsd.port.mk>
