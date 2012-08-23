# $OpenBSD: Makefile,v 1.7 2012/08/23 15:52:47 sthen Exp $

SHARED_ONLY=	Yes

COMMENT= 	interface to the Serpent encryption algorithm

MODULES=	cpan
DISTNAME=	Crypt-Serpent-1.01
REVISION=	3
CATEGORIES=	security
USE_GROFF =	Yes

MAINTAINER=	Stephan A. Rickauer <stephan@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB += c

.include <bsd.port.mk>
