# $OpenBSD: Makefile,v 1.26 2014/07/13 08:17:14 giovanni Exp $

COMMENT=	perl module for an IMAP Client API

DISTNAME=	Mail-IMAPClient-3.35
CATEGORIES=	mail

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan

RUN_DEPENDS=	devel/p5-Parse-RecDescent \
		security/p5-Authen-NTLM \
		security/p5-Authen-SASL \
		security/p5-Digest-HMAC \
		security/p5-IO-Socket-SSL
BUILD_DEPENDS=	${RUN_DEPENDS}

MODCPAN_EXAMPLES=	Yes

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
