# $OpenBSD: Makefile,v 1.2 2013/03/11 11:42:45 espie Exp $

COMMENT =	pure Perl implementation for parsing/writing XML documents

DISTNAME =	XML-TreePP-0.41
CATEGORIES =	textproc
CPAN_AUTHOR =	KAWASAKI

MAINTAINER =	Mikolaj Kucharski <mikolaj@kucharski.name>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan

RUN_DEPENDS =		p5-libwww-*|p5-HTTP-Lite-*:www/p5-libwww
TEST_DEPENDS =	converters/p5-Jcode \
			devel/p5-Test-Pod \
			devel/p5-Tie-IxHash \
			www/p5-HTTP-Lite \
			www/p5-libwww

TEST_FLAGS =		MORE_TESTS=Yes

.include <bsd.port.mk>
