# $OpenBSD: Makefile,v 1.7 2020/07/03 21:45:35 sthen Exp $

COMMENT=	SSL/STARTTLS support for Net::SMTP

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Net-SMTPS-0.09
CATEGORIES=	net mail
REVISION =	0

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	security/p5-Authen-SASL>=2 \
		security/p5-IO-Socket-SSL>=1

.include <bsd.port.mk>
