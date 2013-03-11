# $OpenBSD: Makefile,v 1.17 2013/03/11 11:41:26 espie Exp $

SHARED_ONLY=	Yes

MODULES=	cpan
COMMENT=	implements DSA using OpenSSL
DISTNAME=	Crypt-OpenSSL-DSA-0.13
REVISION=	4
CATEGORIES=	security
USE_GROFF =	Yes

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=	http://perl-openssl.sourceforge.net/

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto ssl

TEST_DEPENDS=	security/p5-Digest-SHA1

.include <bsd.port.mk>
