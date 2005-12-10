# $OpenBSD: Makefile,v 1.8 2005/12/10 18:50:48 steven Exp $

COMMENT=	"defines RGB values for common color names"

DISTNAME=	Graphics-ColorNames-2.0_03
PKGNAME=	p5-${DISTNAME:S/_/./}
CATEGORIES=	graphics perl5

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/R/RR/RRWO/}

# GPL/Artistic
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

BUILD_DEPENDS=	::devel/p5-Module-Load
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE=	perl

PKG_ARCH= *

.include <bsd.port.mk>
