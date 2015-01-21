# $OpenBSD: Makefile,v 1.10 2015/01/21 14:40:11 sthen Exp $

COMMENT=		make use of SSL with POE

MODULES=		cpan
DISTNAME=		POE-Component-SSLify-0.15
REVISION=		1
CATEGORIES=		net security

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-POE \
			security/p5-Net_SSLeay

.include <bsd.port.mk>
