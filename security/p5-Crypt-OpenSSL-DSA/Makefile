# $OpenBSD: Makefile,v 1.25 2019/07/12 20:49:07 sthen Exp $

MODULES=	cpan
COMMENT=	implements DSA using OpenSSL
DISTNAME =	Crypt-OpenSSL-DSA-0.19
CATEGORIES=	security

# perl
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto perl ssl

.include <bsd.port.mk>
