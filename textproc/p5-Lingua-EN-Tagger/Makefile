# $OpenBSD: Makefile,v 1.10 2020/07/03 21:45:46 sthen Exp $

COMMENT =	part-of-speech tagger for EN natural language processing

DISTNAME =	Lingua-EN-Tagger-0.31
CATEGORIES =	textproc
REVISION =	0

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
