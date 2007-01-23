# $OpenBSD: Makefile,v 1.2 2007/01/23 22:30:51 espie Exp $

COMMENT=	"Perl extension to interface GSM cellulars / modems"

DISTNAME=	Device-Gsm-1.36 
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	comms

MODULES=	cpan
MAINTAINER=	Matteo Cantoni <goony@openbeer.it>  

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::comms/p5-Device-Modem
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
