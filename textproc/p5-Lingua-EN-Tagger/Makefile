# $OpenBSD: Makefile,v 1.3 2014/03/16 21:55:18 afresh1 Exp $

COMMENT =	part-of-speech tagger for EN natural language processing

DISTNAME =	Lingua-EN-Tagger-0.24
CATEGORIES =	textproc

MAINTAINER =	Andrew Fresh <andrew@cpan.org>

# GPLv3 Only
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

RUN_DEPENDS =	devel/p5-Memoize-ExpireLRU \
		textproc/p5-Lingua-Stem \
		www/p5-HTML-Parser \
		www/p5-HTML-Tagset

.include <bsd.port.mk>
