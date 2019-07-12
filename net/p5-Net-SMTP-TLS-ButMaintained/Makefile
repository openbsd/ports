# $OpenBSD: Makefile,v 1.6 2019/07/12 20:48:39 sthen Exp $

COMMENT=	Perl module for SMTP with TLS/AUTH support

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Net-SMTP-TLS-ButMaintained-0.24
CATEGORIES=	net mail

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	security/p5-Digest-HMAC \
		security/p5-Net_SSLeay \
		security/p5-IO-Socket-SSL>=1.76

# For a live test, edit t/config.txt with SMTP server parameters.
MAKE_ENV=	TEST_TLS=1

.include <bsd.port.mk>
