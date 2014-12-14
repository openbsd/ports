# $OpenBSD: Makefile,v 1.2 2014/12/14 17:01:14 benoit Exp $

COMMENT=	SSL/STARTTLS support for Net::SMTP

MODULES=	cpan
DISTNAME=	Net-SMTPS-0.04
CATEGORIES=	net mail

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	security/p5-IO-Socket-SSL \
		security/p5-Authen-SASL		

.include <bsd.port.mk>
