# $OpenBSD: Makefile,v 1.2 2006/04/05 11:56:05 steven Exp $

COMMENT=	"generate SQL from Perl data structures"

DISTNAME=	SQL-Abstract-1.21
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl5

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=SQL/}

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
