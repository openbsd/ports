# $OpenBSD: Makefile,v 1.18 2016/01/17 23:02:25 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	routines for accessing the OpenSSL prng

MODULES=	cpan
DISTNAME=	Crypt-OpenSSL-Random-0.11
CATEGORIES=	security

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto ssl

CPAN_AUTHOR=	RURBAN

.include <bsd.port.mk>
