# $OpenBSD: Makefile,v 1.2 2012/12/30 12:01:32 bluhm Exp $

COMMENT=	Perl module for SMTP with TLS/AUTH support

MODULES=	cpan
DISTNAME=	Net-SMTP-TLS-ButMaintained-0.21
CATEGORIES=	net mail

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	security/p5-Digest-HMAC \
		security/p5-Net_SSLeay \
		security/p5-IO-Socket-SSL>=1.76

# For a live test, edit t/config.txt with SMTP server parameters.
MAKE_ENV=	TEST_TLS=1

.include <bsd.port.mk>
