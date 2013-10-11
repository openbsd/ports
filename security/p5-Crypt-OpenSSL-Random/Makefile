# $OpenBSD: Makefile,v 1.14 2013/10/11 23:50:47 naddy Exp $

SHARED_ONLY=	Yes

COMMENT=	routines for accessing the OpenSSL prng

MODULES=	cpan
DISTNAME=	Crypt-OpenSSL-Random-0.04
REVISION=	2
CATEGORIES=	security
HOMEPAGE=	http://perl-openssl.sourceforge.net/

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto ssl

.include <bsd.port.mk>
