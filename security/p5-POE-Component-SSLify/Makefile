# $OpenBSD: Makefile,v 1.2 2007/08/28 20:18:41 simon Exp $

COMMENT=		make use of SSL with POE

MODULES=		cpan
DISTNAME=		POE-Component-SSLify-0.08
CATEGORIES=		net security

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::security/p5-Net_SSLeay

.include <bsd.port.mk>
