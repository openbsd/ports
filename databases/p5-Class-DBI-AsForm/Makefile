# $OpenBSD: Makefile,v 1.3 2006/04/15 19:26:43 steven Exp $

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
REGRESS_DEPENDS=::databases/p5-DBD-SQLite

PKG_ARCH=	*

.include <bsd.port.mk>
