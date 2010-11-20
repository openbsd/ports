# $OpenBSD: Makefile,v 1.10 2010/11/20 17:22:44 espie Exp $

COMMENT=	interface to HMAC Message-Digest Algorithms

MODULES=	cpan
DISTNAME=	Digest-HMAC-1.02
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
