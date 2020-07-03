# $OpenBSD: Makefile,v 1.8 2020/07/03 21:45:46 sthen Exp $

COMMENT =	inflect short English Phrases
DISTNAME =	Lingua-EN-Inflect-Phrase-0.20
CATEGORIES =	textproc
REVISION =	0

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl_5
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*
CONFIGURE_ARGS =	--skipdeps

MAKE_ENV =	TEST_POD=Yes AUTHOR_TESTING=Yes

RUN_DEPENDS = 	textproc/p5-Lingua-EN-FindNumber \
		textproc/p5-Lingua-EN-Number-IsOrdinal \
		textproc/p5-Lingua-EN-Inflect \
		textproc/p5-Lingua-EN-Inflect-Number \
		textproc/p5-Lingua-EN-Tagger

TEST_DEPENDS = 	devel/p5-Test-NoWarnings

.include <bsd.port.mk>
