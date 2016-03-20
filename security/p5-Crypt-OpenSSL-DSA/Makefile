# $OpenBSD: Makefile,v 1.22 2016/03/20 19:57:00 naddy Exp $

MODULES=	cpan
COMMENT=	implements DSA using OpenSSL
DISTNAME =	Crypt-OpenSSL-DSA-0.15
CATEGORIES=	security

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto perl ssl

.include <bsd.port.mk>
