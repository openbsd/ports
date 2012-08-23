# $OpenBSD: Makefile,v 1.12 2012/08/23 15:52:47 sthen Exp $

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
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c crypto ssl

.include <bsd.port.mk>
