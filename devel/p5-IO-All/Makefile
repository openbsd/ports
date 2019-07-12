# $OpenBSD: Makefile,v 1.14 2019/07/12 20:44:57 sthen Exp $

COMMENT=	universal I/O to everything

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	IO-All-0.86
CATEGORIES=	devel

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-IO-String

TEST_DEPENDS=	devel/p5-File-ReadBackwards \
		devel/p5-MLDBM

.include <bsd.port.mk>
