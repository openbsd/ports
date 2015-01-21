# $OpenBSD: Makefile,v 1.20 2015/01/21 14:40:11 sthen Exp $

SHARED_ONLY=	Yes

MODULES=	cpan
COMMENT=	implements DSA using OpenSSL
DISTNAME=	Crypt-OpenSSL-DSA-0.14
CATEGORIES=	security
REVISION=	0

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto ssl

.include <bsd.port.mk>
