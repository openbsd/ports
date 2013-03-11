# $OpenBSD: Makefile,v 1.10 2013/03/11 10:50:18 espie Exp $

COMMENT= 	universal I/O to everything

MODULES=	cpan 
DISTNAME=	IO-All-0.41
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-IO-String

TEST_DEPENDS=devel/p5-File-ReadBackwards \
		devel/p5-MLDBM

CONFIGURE_STYLE=modinst

.include <bsd.port.mk>
