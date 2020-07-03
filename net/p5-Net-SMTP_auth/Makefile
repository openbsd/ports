# $OpenBSD: Makefile,v 1.9 2020/07/03 21:45:35 sthen Exp $

COMMENT=	Perl module to use authenticated SMTP

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Net-SMTP_auth-0.08
REVISION=	1
CATEGORIES=	net mail

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	security/p5-Digest-HMAC \
		security/p5-Authen-SASL>=2.03

.include <bsd.port.mk>
