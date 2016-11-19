# $OpenBSD: Makefile,v 1.23 2016/11/19 14:38:14 sthen Exp $

MODULES=	cpan
COMMENT=	implements DSA using OpenSSL
DISTNAME =	Crypt-OpenSSL-DSA-0.18
CATEGORIES=	security

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto perl ssl

.include <bsd.port.mk>
