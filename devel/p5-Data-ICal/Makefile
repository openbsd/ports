# $OpenBSD: Makefile,v 1.8 2013/03/11 10:50:15 espie Exp $

COMMENT =	generates iCalendar (RFC 2445) calendar files

DISTNAME =	Data-ICal-0.16
REVISION =	1

CATEGORIES =	devel

MODULES =	cpan
USE_GROFF =	Yes

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
