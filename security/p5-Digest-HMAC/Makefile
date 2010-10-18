# $OpenBSD: Makefile,v 1.9 2010/10/18 21:41:46 espie Exp $

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

RUN_DEPENDS=	:p5-Digest-SHA1->=1:security/p5-Digest-SHA1
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>	
