# $OpenBSD: Makefile,v 1.11 2016/03/20 19:56:07 naddy Exp $

COMMENT=	Perl extension to interface GSM cellulars / modems

DISTNAME =	Device-Gsm-1.60
CATEGORIES=	comms

MODULES=	cpan
PKG_ARCH=	*

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	comms/p5-Device-Modem
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
