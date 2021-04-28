# $OpenBSD: Makefile,v 1.27 2021/04/28 19:45:32 sthen Exp $

MODULES=	cpan
COMMENT=	implements DSA using OpenSSL
DISTNAME =	Crypt-OpenSSL-DSA-0.20
CATEGORIES=	security

# perl
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto perl ssl

.include <bsd.port.mk>
