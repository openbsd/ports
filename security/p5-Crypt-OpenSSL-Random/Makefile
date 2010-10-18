# $OpenBSD: Makefile,v 1.11 2010/10/18 21:41:46 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	routines for accessing the OpenSSL prng

MODULES=	cpan
DISTNAME=	Crypt-OpenSSL-Random-0.04
REVISION=	1
CATEGORIES=	security
HOMEPAGE=	http://perl-openssl.sourceforge.net/
USE_GROFF =	Yes

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto ssl

.include <bsd.port.mk>
