# $OpenBSD: Makefile,v 1.18 2013/11/06 09:05:25 jca Exp $

SHARED_ONLY=	Yes

MODULES=	cpan
COMMENT=	implements DSA using OpenSSL
DISTNAME=	Crypt-OpenSSL-DSA-0.14
CATEGORIES=	security
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto ssl

.include <bsd.port.mk>
