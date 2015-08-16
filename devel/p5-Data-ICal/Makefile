# $OpenBSD: Makefile,v 1.10 2015/08/16 08:12:53 benoit Exp $

COMMENT =	generates iCalendar (RFC 2445) calendar files

DISTNAME =	Data-ICal-0.22

CATEGORIES =	devel

MODULES =	cpan

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/p5-Class-Accessor \
			devel/p5-Class-ReturnValue>=0.55 \
			devel/p5-Text-vFile-asData \
			devel/p5-Test-LongString \
			devel/p5-Test-NoWarnings \
			devel/p5-Test-Warn \

TEST_DEPENDS =	devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
