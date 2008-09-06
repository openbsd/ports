# $OpenBSD: Makefile,v 1.1.1.1 2008/09/06 09:53:05 simon Exp $

COMMENT =	code coverage metrics for Perl
SHARED_ONLY =	Yes

MODULES =	cpan
DISTNAME =	Devel-Cover-0.64
CATEGORIES =	devel

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
