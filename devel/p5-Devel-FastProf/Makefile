# $OpenBSD: Makefile,v 1.9 2012/08/23 15:05:15 sthen Exp $

SHARED_ONLY=	Yes
COMMENT=	per-line quick profiler for perl
CATEGORIES=	devel
DISTNAME=	Devel-FastProf-0.08
REVISION=	2
MODULES=	cpan
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB += c

RUN_DEPENDS=	devel/p5-Sort-Key

.include <bsd.port.mk>
