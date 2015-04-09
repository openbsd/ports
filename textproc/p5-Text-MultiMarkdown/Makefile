# $OpenBSD: Makefile,v 1.7 2015/04/09 15:25:31 okan Exp $

COMMENT =	convert MultiMarkdown syntax to (X)HTML

DISTNAME =	Text-MultiMarkdown-1.000035
CATEGORIES =	textproc www
MODULES =	cpan

MAINTAINER =	Okan Demirmen <okan@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	textproc/p5-Text-Markdown \
		www/p5-HTML-Parser

MAKE_ENV =	TEST_POD=Yes \
		TEST_SPELLING=Yes

TEST_DEPENDS =	devel/p5-Test-Spelling \
		devel/p5-Test-Differences \
		www/p5-HTML-Tidy

.include <bsd.port.mk>
