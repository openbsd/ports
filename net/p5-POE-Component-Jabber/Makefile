# $OpenBSD: Makefile,v 1.6 2009/03/23 08:42:04 jasper Exp $

COMMENT=		POE Component for communicating over Jabber

DISTNAME=		POE-Component-Jabber-3.00
CATEGORIES=		net

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		::devel/p5-Filter-Template \
			::devel/p5-POE-Component-PubSub \
			::security/p5-Authen-SASL \
			:p5-Net-SSLeay->=1.35:security/p5-Net_SSLeay \
			:p5-POE-Component-SSLify->=0.15:security/p5-POE-Component-SSLify \
			:p5-POE-Filter-XML->=0.35:textproc/p5-POE-Filter-XML

.include <bsd.port.mk>
