# $OpenBSD: Makefile,v 1.2 2010/10/18 18:36:54 espie Exp $

COMMENT=	Perl module to use authenticated SMTP

MODULES=	cpan
DISTNAME=	Net-SMTP_auth-0.08
CATEGORIES=	net mail
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::security/p5-Digest-HMAC \
		:p5-Authen-SASL->=2.03:security/p5-Authen-SASL

.include <bsd.port.mk>
