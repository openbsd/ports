# $OpenBSD: Makefile,v 1.14 2016/03/20 19:56:25 naddy Exp $

COMMENT=	module for computing digests while reading or writing

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	IO-Digest-0.11
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-PerlIO-via-dynamic>=0.11
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
