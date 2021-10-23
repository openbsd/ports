# $OpenBSD: Makefile,v 1.32 2021/10/16 08:16:10 benoit Exp $

COMMENT=	fast shared data cache using memory mapped files

MODULES=	cpan
DISTNAME =	Cache-FastMmap-1.57
CATEGORIES=	devel

# perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

TEST_DEPENDS =	devel/p5-Test-Deep

.include <bsd.port.mk>
