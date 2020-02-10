# $OpenBSD: Makefile,v 1.11 2020/02/10 09:12:48 cwen Exp $

COMMENT=	HTML cleaning module

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	HTML-Scrubber-0.19
CATEGORIES=	www

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-HTML-Parser>=3.47

TEST_DEPENDS=	devel/p5-Test-Differences \
		devel/p5-Test-Memory-Cycle

.include <bsd.port.mk>
