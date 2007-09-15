# $OpenBSD: Makefile,v 1.3 2007/09/15 22:36:57 merdely Exp $

COMMENT=		POE Component for communicating over Jabber

DISTNAME=		POE-Component-Jabber-2.01
CATEGORIES=		net

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		::devel/p5-Filter-Template \
			::security/p5-Authen-SASL \
			::security/p5-POE-Component-SSLify \
			::textproc/p5-POE-Filter-XML
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
