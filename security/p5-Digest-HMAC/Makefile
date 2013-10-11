# $OpenBSD: Makefile,v 1.13 2013/10/11 23:50:50 naddy Exp $

COMMENT=	interface to HMAC Message-Digest Algorithms

MODULES=	cpan
DISTNAME=	Digest-HMAC-1.02
REVISION=	0
CATEGORIES=	security

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=	security/p5-Digest-SHA1>=1
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>	
