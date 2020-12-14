# $OpenBSD: Makefile,v 1.31 2020/12/14 09:19:03 benoit Exp $

COMMENT=	fast shared data cache using memory mapped files

MODULES=	cpan
DISTNAME =	Cache-FastMmap-1.56
CATEGORIES=	devel

# perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

TEST_DEPENDS =	devel/p5-Test-Deep

.include <bsd.port.mk>
