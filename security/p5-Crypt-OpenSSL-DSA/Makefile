# $OpenBSD: Makefile,v 1.16 2012/08/23 15:52:47 sthen Exp $

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
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c crypto ssl

REGRESS_DEPENDS=	security/p5-Digest-SHA1

.include <bsd.port.mk>
