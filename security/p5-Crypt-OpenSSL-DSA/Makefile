# $OpenBSD: Makefile,v 1.24 2017/03/28 11:02:47 benoit Exp $

MODULES=	cpan
COMMENT=	implements DSA using OpenSSL
DISTNAME =	Crypt-OpenSSL-DSA-0.19
CATEGORIES=	security

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto perl ssl

.include <bsd.port.mk>
