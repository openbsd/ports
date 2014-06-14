# $OpenBSD: Makefile,v 1.19 2014/06/14 23:26:00 sthen Exp $

SHARED_ONLY=	Yes

MODULES=	cpan
COMMENT=	implements DSA using OpenSSL
DISTNAME=	Crypt-OpenSSL-DSA-0.14
CATEGORIES=	security
USE_GROFF =	Yes
REVISION=	0

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto ssl

.include <bsd.port.mk>
