# $OpenBSD: Makefile,v 1.21 2015/03/29 20:36:55 benoit Exp $

SHARED_ONLY=	Yes

MODULES=	cpan
COMMENT=	implements DSA using OpenSSL
DISTNAME =	Crypt-OpenSSL-DSA-0.15
CATEGORIES=	security

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto ssl

.include <bsd.port.mk>
