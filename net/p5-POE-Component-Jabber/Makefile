# $OpenBSD: Makefile,v 1.1.1.1 2007/01/02 15:04:06 jasper Exp $

COMMENT=		"POE Component for communicating over Jabber"

DISTNAME=		POE-Component-Jabber-1.21
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
