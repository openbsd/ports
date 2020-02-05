# $OpenBSD: Makefile,v 1.15 2020/02/05 12:28:23 benoit Exp $

COMMENT=	universal I/O to everything

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	IO-All-0.87
CATEGORIES=	devel

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-IO-String

TEST_DEPENDS=	devel/p5-File-ReadBackwards \
		devel/p5-MLDBM

.include <bsd.port.mk>
