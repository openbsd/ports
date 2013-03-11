# $OpenBSD: Makefile,v 1.5 2013/03/11 11:35:53 espie Exp $

COMMENT=	Perl module to use authenticated SMTP

MODULES=	cpan
DISTNAME=	Net-SMTP_auth-0.08
REVISION=	0
CATEGORIES=	net mail
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	security/p5-Digest-HMAC \
		security/p5-Authen-SASL>=2.03

.include <bsd.port.mk>
