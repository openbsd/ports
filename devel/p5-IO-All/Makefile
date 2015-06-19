# $OpenBSD: Makefile,v 1.12 2015/06/19 06:52:12 jasper Exp $

COMMENT=	universal I/O to everything

MODULES=	cpan
DISTNAME=	IO-All-0.86
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-IO-String

TEST_DEPENDS=	devel/p5-File-ReadBackwards \
		devel/p5-MLDBM

.include <bsd.port.mk>
