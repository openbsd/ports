# $OpenBSD: Makefile,v 1.5 2010/10/18 17:47:59 espie Exp $

COMMENT =	code coverage metrics for Perl
SHARED_ONLY =	Yes

MODULES =	cpan
DISTNAME =	Devel-Cover-0.64
REVISION =	1
CATEGORIES =	devel
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	::devel/p5-Pod-Coverage \
		::devel/p5-Test-Differences \
		::textproc/p5-PPI-HTML \
		::textproc/p5-Template

.include <bsd.port.mk>
