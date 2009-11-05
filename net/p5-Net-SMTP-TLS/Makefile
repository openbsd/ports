# $OpenBSD: Makefile,v 1.1.1.1 2009/11/05 13:23:59 sthen Exp $

COMMENT=	Perl module for SMTP with TLS/AUTH support

MODULES=	cpan
DISTNAME=	Net-SMTP-TLS-0.12
CATEGORIES=	net mail

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::security/p5-Digest-HMAC \
		::security/p5-Net_SSLeay \
		::security/p5-IO-Socket-SSL

.include <bsd.port.mk>
