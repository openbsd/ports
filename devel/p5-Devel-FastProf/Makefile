# $OpenBSD: Makefile,v 1.10 2013/03/11 10:50:16 espie Exp $

SHARED_ONLY=	Yes
COMMENT=	per-line quick profiler for perl
CATEGORIES=	devel
DISTNAME=	Devel-FastProf-0.08
REVISION=	2
MODULES=	cpan
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c

RUN_DEPENDS=	devel/p5-Sort-Key

.include <bsd.port.mk>
