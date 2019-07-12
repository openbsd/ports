# $OpenBSD: Makefile,v 1.15 2019/07/12 20:44:57 sthen Exp $

COMMENT=	module for computing digests while reading or writing

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	IO-Digest-0.11
CATEGORIES=	devel

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-PerlIO-via-dynamic>=0.11
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
