# $OpenBSD: Makefile,v 1.9 2019/10/29 02:43:55 afresh1 Exp $

COMMENT =	part-of-speech tagger for EN natural language processing

DISTNAME =	Lingua-EN-Tagger-0.31
CATEGORIES =	textproc

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# GPLv3 Only
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*

RUN_DEPENDS =	devel/p5-Memoize-ExpireLRU>=0.55 \
		textproc/p5-Lingua-Stem>=0.81 \
		www/p5-HTML-Parser>=3.45 \
		www/p5-HTML-Tagset>=3.20

.include <bsd.port.mk>
