# $OpenBSD: Makefile,v 1.1.1.1 2004/04/11 11:59:50 sturm Exp $

COMMENT=	"Perl Extensions for ICal objects"

DISTNAME=	Date-ICal-1.72
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Date/}

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Date-Leapyear 

CONFIGURE_STYLE=perl

.include <bsd.port.mk>
