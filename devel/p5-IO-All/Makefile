# $OpenBSD: Makefile,v 1.13 2016/03/20 19:56:25 naddy Exp $

COMMENT=	universal I/O to everything

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	IO-All-0.86
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-IO-String

TEST_DEPENDS=	devel/p5-File-ReadBackwards \
		devel/p5-MLDBM

.include <bsd.port.mk>
