# $OpenBSD: Makefile,v 1.1.1.1 2004/11/04 13:00:14 xsa Exp $

COMMENT=	"Perl extension to interface GSM cellulars / modems"

DISTNAME=	Device-Gsm-1.36 
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	comms perl5

MAINTAINER=	Matteo Cantoni <goony@openbeer.it>  

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Device/}

RUN_DEPENDS=	::comms/p5-Device-Modem
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=perl

.include <bsd.port.mk>
