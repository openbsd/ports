# $OpenBSD: Makefile,v 1.13 2019/07/12 20:48:41 sthen Exp $

COMMENT=		POE Component for communicating over Jabber

DISTNAME=		POE-Component-Jabber-3.00
REVISION=		0
CATEGORIES=		net

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-Filter-Template \
			devel/p5-POE-Component-PubSub \
			security/p5-Authen-SASL \
			security/p5-Net_SSLeay>=1.35 \
			security/p5-POE-Component-SSLify>=0.15 \
			textproc/p5-POE-Filter-XML>=0.35

.include <bsd.port.mk>
