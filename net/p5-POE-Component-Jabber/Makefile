# $OpenBSD: Makefile,v 1.5 2008/10/02 19:18:33 jasper Exp $

COMMENT=		POE Component for communicating over Jabber

DISTNAME=		POE-Component-Jabber-2.03
CATEGORIES=		net

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		::devel/p5-Filter-Template \
			::security/p5-Authen-SASL \
			:p5-Net-SSLeay->=1.35:security/p5-Net_SSLeay \
			::security/p5-POE-Component-SSLify \
			::textproc/p5-POE-Filter-XML
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
