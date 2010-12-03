# $OpenBSD: Makefile,v 1.11 2010/12/03 11:46:47 ajacoutot Exp $

COMMENT=	interface to HMAC Message-Digest Algorithms

MODULES=	cpan
DISTNAME=	Digest-HMAC-1.02
REVISION=	0
CATEGORIES=	security
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	security/p5-Digest-SHA1>=1
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>	
