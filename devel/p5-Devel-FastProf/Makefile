# $OpenBSD: Makefile,v 1.13 2015/07/16 23:57:21 ajacoutot Exp $

SHARED_ONLY=	Yes
COMMENT=	per-line quick profiler for perl
CATEGORIES=	devel
DISTNAME=	Devel-FastProf-0.08
REVISION=	4
MODULES=	cpan

# perl
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c

RUN_DEPENDS=	devel/p5-Sort-Key

.include <bsd.port.mk>
