# $OpenBSD: Makefile,v 1.3 2008/09/08 09:50:18 jasper Exp $

COMMENT=		make use of SSL with POE

MODULES=		cpan
DISTNAME=		POE-Component-SSLify-0.14
CATEGORIES=		net security

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		::devel/p5-POE \
			::security/p5-Net_SSLeay

.include <bsd.port.mk>
