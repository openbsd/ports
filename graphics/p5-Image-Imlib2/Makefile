# $OpenBSD: Makefile,v 1.2 2004/07/15 16:23:02 xsa Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"Perl interface to the Imlib2 image library"

DISTNAME=	Image-Imlib2-1.03
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	graphics perl5

MAINTAINER=	Michael Knudsen <e@molioner.dk>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Image/}

LIB_DEPENDS=	Imlib2.1::graphics/imlib2

CONFIGURE_STYLE=perl modbuild

.include <bsd.port.mk>
