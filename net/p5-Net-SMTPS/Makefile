# $OpenBSD: Makefile,v 1.4 2017/04/30 11:41:38 benoit Exp $

COMMENT=	SSL/STARTTLS support for Net::SMTP

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Net-SMTPS-0.06
CATEGORIES=	net mail

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	security/p5-IO-Socket-SSL \
		security/p5-Authen-SASL		

.include <bsd.port.mk>
