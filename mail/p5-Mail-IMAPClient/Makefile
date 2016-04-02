# $OpenBSD: Makefile,v 1.29 2016/04/02 20:07:16 benoit Exp $

COMMENT=	perl module for an IMAP Client API

DISTNAME =	Mail-IMAPClient-3.38
CATEGORIES=	mail

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	devel/p5-Parse-RecDescent \
		security/p5-Authen-NTLM \
		security/p5-Authen-SASL \
		security/p5-Digest-HMAC \
		security/p5-IO-Socket-SSL
BUILD_DEPENDS=	${RUN_DEPENDS}

MODCPAN_EXAMPLES=	Yes

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
