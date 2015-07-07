# $OpenBSD: Makefile,v 1.17 2015/07/07 13:44:55 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	routines for accessing the OpenSSL prng

MODULES=	cpan
DISTNAME=	Crypt-OpenSSL-Random-0.10
CATEGORIES=	security

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto ssl

CPAN_AUTHOR=	RURBAN

.include <bsd.port.mk>
