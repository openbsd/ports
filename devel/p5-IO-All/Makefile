# $OpenBSD: Makefile,v 1.16 2020/07/03 21:44:56 sthen Exp $

COMMENT=	universal I/O to everything

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	IO-All-0.87
CATEGORIES=	devel
REVISION =	0

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-IO-String

TEST_DEPENDS=	devel/p5-File-ReadBackwards \
		devel/p5-MLDBM

.include <bsd.port.mk>
