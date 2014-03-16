# $OpenBSD: Makefile,v 1.3 2014/03/16 21:56:38 afresh1 Exp $

COMMENT =	inflect short English Phrases
DISTNAME =	Lingua-EN-Inflect-Phrase-0.18
CATEGORIES =	textproc

MAINTAINER =	Andrew Fresh <andrew@cpan.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
CONFIGURE_ARGS =	--skipdeps

RUN_DEPENDS = 	textproc/p5-Lingua-EN-FindNumber \
		textproc/p5-Lingua-EN-Number-IsOrdinal \
		textproc/p5-Lingua-EN-Inflect \
		textproc/p5-Lingua-EN-Inflect-Number \
		textproc/p5-Lingua-EN-Tagger

TEST_DEPENDS = 	devel/p5-Test-NoWarnings

.include <bsd.port.mk>
