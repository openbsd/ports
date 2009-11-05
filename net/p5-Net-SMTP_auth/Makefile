# $OpenBSD: Makefile,v 1.1.1.1 2009/11/05 13:24:24 sthen Exp $

COMMENT=	Perl module to use authenticated SMTP

MODULES=	cpan
DISTNAME=	Net-SMTP_auth-0.08
CATEGORIES=	net mail

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::security/p5-Digest-HMAC \
		:p5-Authen-SASL->=2.03:security/p5-Authen-SASL

.include <bsd.port.mk>
