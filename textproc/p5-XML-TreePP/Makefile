# $OpenBSD: Makefile,v 1.6 2019/07/12 20:50:09 sthen Exp $

COMMENT =	pure Perl implementation for parsing/writing XML documents

DISTNAME =	XML-TreePP-0.43
CATEGORIES =	textproc
CPAN_AUTHOR =	KAWASAKI

HOMEPAGE =	https://github.com/kawanet/XML-TreePP

MAINTAINER =	Mikolaj Kucharski <mikolaj@kucharski.name>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	p5-libwww-*|p5-HTTP-Lite-*:www/p5-libwww
TEST_DEPENDS =	converters/p5-Jcode \
		devel/p5-Test-Pod \
		devel/p5-Tie-IxHash \
		www/p5-HTTP-Lite \
		www/p5-libwww

TEST_FLAGS =	MORE_TESTS=Yes

.include <bsd.port.mk>
