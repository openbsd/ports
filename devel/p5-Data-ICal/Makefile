# $OpenBSD: Makefile,v 1.12 2019/07/12 20:44:49 sthen Exp $

COMMENT =	generates iCalendar (RFC 2445) calendar files

DISTNAME =	Data-ICal-0.22

CATEGORIES =	devel

MODULES =	cpan
PKG_ARCH =	*

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		devel/p5-Class-Accessor \
			devel/p5-Class-ReturnValue>=0.55 \
			devel/p5-Text-vFile-asData \
			devel/p5-Test-LongString \
			devel/p5-Test-NoWarnings \
			devel/p5-Test-Warn \

TEST_DEPENDS =	devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
