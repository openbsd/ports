# $OpenBSD: Makefile,v 1.5 2016/03/20 19:57:05 naddy Exp $

COMMENT =	inflect short English Phrases
DISTNAME =	Lingua-EN-Inflect-Phrase-0.18
REVISION =	0
CATEGORIES =	textproc

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
CONFIGURE_ARGS =	--skipdeps

RUN_DEPENDS = 	textproc/p5-Lingua-EN-FindNumber \
		textproc/p5-Lingua-EN-Number-IsOrdinal \
		textproc/p5-Lingua-EN-Inflect \
		textproc/p5-Lingua-EN-Inflect-Number \
		textproc/p5-Lingua-EN-Tagger

TEST_DEPENDS = 	devel/p5-Test-NoWarnings

.include <bsd.port.mk>
