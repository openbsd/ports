# $OpenBSD: Makefile,v 1.12 2013/03/11 11:41:27 espie Exp $

COMMENT=	interface to HMAC Message-Digest Algorithms

MODULES=	cpan
DISTNAME=	Digest-HMAC-1.02
REVISION=	0
CATEGORIES=	security
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=	security/p5-Digest-SHA1>=1
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>	
