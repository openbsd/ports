# $OpenBSD: Makefile,v 1.9 2013/03/11 01:30:26 espie Exp $

COMMENT=	Perl extension to interface GSM cellulars / modems

DISTNAME=	Device-Gsm-1.58
CATEGORIES=	comms

MODULES=	cpan
MAINTAINER=	Matteo Cantoni <matteo.cantoni@gmail.com>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	comms/p5-Device-Modem
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
