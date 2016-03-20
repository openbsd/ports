# $OpenBSD: Makefile,v 1.3 2016/03/20 19:56:54 naddy Exp $

COMMENT=	SSL/STARTTLS support for Net::SMTP

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Net-SMTPS-0.04
CATEGORIES=	net mail

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	security/p5-IO-Socket-SSL \
		security/p5-Authen-SASL		

.include <bsd.port.mk>
