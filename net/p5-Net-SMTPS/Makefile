# $OpenBSD: Makefile,v 1.6 2019/07/12 20:48:39 sthen Exp $

COMMENT=	SSL/STARTTLS support for Net::SMTP

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Net-SMTPS-0.09
CATEGORIES=	net mail

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	security/p5-Authen-SASL>=2 \
		security/p5-IO-Socket-SSL>=1

.include <bsd.port.mk>
