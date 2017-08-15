# $OpenBSD: Makefile,v 1.13 2017/08/15 15:35:14 afresh1 Exp $

COMMENT=	converts simple text to web constructs

DISTNAME =	Text-Textile-2.13
CATEGORIES=	textproc

HOMEPAGE =	https://github.com/bradchoate/text-textile/

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*

# Additional depends to avoid skipping tests
TEST_DEPENDS =	devel/p5-Test-Pod

.include <bsd.port.mk>
