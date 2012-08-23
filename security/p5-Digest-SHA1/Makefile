# $OpenBSD: Makefile,v 1.21 2012/08/23 15:52:47 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	module to calculate SHA1 digests

MODULES=	cpan
DISTNAME=	Digest-SHA1-2.13
REVISION=	2
CATEGORIES=	security
USE_GROFF =	Yes

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic licence
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

.include <bsd.port.mk>
