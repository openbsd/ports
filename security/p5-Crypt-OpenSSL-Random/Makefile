# $OpenBSD: Makefile,v 1.13 2013/03/11 11:41:26 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	routines for accessing the OpenSSL prng

MODULES=	cpan
DISTNAME=	Crypt-OpenSSL-Random-0.04
REVISION=	2
CATEGORIES=	security
HOMEPAGE=	http://perl-openssl.sourceforge.net/
USE_GROFF =	Yes

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto ssl

.include <bsd.port.mk>
