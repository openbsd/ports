# $OpenBSD: Makefile,v 1.4 2010/10/18 17:47:58 espie Exp $

COMMENT =	generates iCalendar (RFC 2445) calendar files

DISTNAME =	Data-ICal-0.16
REVISION =	0

CATEGORIES =	devel

MODULES =	cpan
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =		::devel/p5-Class-Accessor \
			:p5-Class-ReturnValue->=0.55:devel/p5-Class-ReturnValue \
			::devel/p5-Text-vFile-asData \
			::devel/p5-Test-LongString \
			::devel/p5-Test-NoWarnings \
			::devel/p5-Test-Warn \

REGRESS_DEPENDS =	::devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
