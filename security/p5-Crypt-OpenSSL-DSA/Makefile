# $OpenBSD: Makefile,v 1.26 2020/07/03 21:45:40 sthen Exp $

MODULES=	cpan
COMMENT=	implements DSA using OpenSSL
DISTNAME =	Crypt-OpenSSL-DSA-0.19
CATEGORIES=	security
REVISION =	0

# perl
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto perl ssl

.include <bsd.port.mk>
