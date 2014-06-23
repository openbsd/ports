# $OpenBSD: Makefile,v 1.1.1.1 2014/06/23 19:12:12 henning Exp $

COMMENT=	SSL/STARTTLS support for Net::SMTP

MODULES=	cpan
DISTNAME=	Net-SMTPS-0.03
CATEGORIES=	net mail

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	security/p5-IO-Socket-SSL \
		security/p5-Authen-SASL		

.include <bsd.port.mk>
