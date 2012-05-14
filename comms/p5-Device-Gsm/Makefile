# $OpenBSD: Makefile,v 1.8 2012/05/14 11:27:25 sthen Exp $

COMMENT=	Perl extension to interface GSM cellulars / modems

DISTNAME=	Device-Gsm-1.58
CATEGORIES=	comms

MODULES=	cpan
MAINTAINER=	Matteo Cantoni <matteo.cantoni@gmail.com>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	comms/p5-Device-Modem
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
