# $OpenBSD: Makefile,v 1.5 2019/05/14 21:31:04 cwen Exp $

COMMENT=	SSL/STARTTLS support for Net::SMTP

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Net-SMTPS-0.09
CATEGORIES=	net mail

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	security/p5-Authen-SASL>=2 \
		security/p5-IO-Socket-SSL>=1

.include <bsd.port.mk>
