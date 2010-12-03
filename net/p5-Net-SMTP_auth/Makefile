# $OpenBSD: Makefile,v 1.4 2010/12/03 11:45:42 ajacoutot Exp $

COMMENT=	Perl module to use authenticated SMTP

MODULES=	cpan
DISTNAME=	Net-SMTP_auth-0.08
REVISION=	0
CATEGORIES=	net mail
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	security/p5-Digest-HMAC \
		security/p5-Authen-SASL>=2.03

.include <bsd.port.mk>
