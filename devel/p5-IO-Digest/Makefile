# $OpenBSD: Makefile,v 1.16 2020/07/03 21:44:56 sthen Exp $

COMMENT=	module for computing digests while reading or writing

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	IO-Digest-0.11
CATEGORIES=	devel
REVISION=	0

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-PerlIO-via-dynamic>=0.11
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
