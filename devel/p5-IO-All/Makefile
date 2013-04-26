# $OpenBSD: Makefile,v 1.11 2013/04/26 10:14:09 sthen Exp $

COMMENT=	universal I/O to everything

MODULES=	cpan
DISTNAME=	IO-All-0.46
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-IO-String

TEST_DEPENDS=	devel/p5-File-ReadBackwards \
		devel/p5-MLDBM

.include <bsd.port.mk>
