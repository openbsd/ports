# $OpenBSD: Makefile,v 1.12 2020/07/03 21:46:01 sthen Exp $

COMMENT=	HTML cleaning module

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	HTML-Scrubber-0.19
CATEGORIES=	www
REVISION=	0

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-HTML-Parser>=3.47

TEST_DEPENDS=	devel/p5-Test-Differences \
		devel/p5-Test-Memory-Cycle

.include <bsd.port.mk>
