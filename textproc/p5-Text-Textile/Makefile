# $OpenBSD: Makefile,v 1.15 2019/07/12 20:50:07 sthen Exp $

COMMENT=	converts simple text to web constructs

DISTNAME =	Text-Textile-2.13
CATEGORIES=	textproc
REVISION=	0

HOMEPAGE =	https://github.com/bradchoate/text-textile/

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*

# Optional dependency to better encode html entities
RUN_DEPENDS =	www/p5-HTML-Parser

# Additional depends to avoid skipping tests
TEST_DEPENDS =	devel/p5-Test-Pod

.include <bsd.port.mk>
