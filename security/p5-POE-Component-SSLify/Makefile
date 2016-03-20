# $OpenBSD: Makefile,v 1.11 2016/03/20 19:57:02 naddy Exp $

COMMENT=		make use of SSL with POE

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		POE-Component-SSLify-0.15
REVISION=		1
CATEGORIES=		net security

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-POE \
			security/p5-Net_SSLeay

.include <bsd.port.mk>
