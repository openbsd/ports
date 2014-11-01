# $OpenBSD: Makefile,v 1.4 2014/11/01 19:59:16 jasper Exp $

COMMENT =	part-of-speech tagger for EN natural language processing

DISTNAME =	Lingua-EN-Tagger-0.24
REVISION =	0
CATEGORIES =	textproc

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# GPLv3 Only
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

RUN_DEPENDS =	devel/p5-Memoize-ExpireLRU \
		textproc/p5-Lingua-Stem \
		www/p5-HTML-Parser \
		www/p5-HTML-Tagset

.include <bsd.port.mk>
