# $OpenBSD: Makefile,v 1.8 2011/06/01 17:41:49 jasper Exp $

COMMENT =	code coverage metrics for Perl
SHARED_ONLY =	Yes

MODULES =	cpan
DISTNAME =	Devel-Cover-0.78
CATEGORIES =	devel
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	devel/p5-Pod-Coverage \
		devel/p5-Test-Differences \
		textproc/p5-PPI-HTML \
		textproc/p5-Template
REGRESS_DEPENDS=devel/p5-Test-Warn

.include <bsd.port.mk>
