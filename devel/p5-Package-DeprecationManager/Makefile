# $OpenBSD: Makefile,v 1.1.1.1 2011/03/22 23:18:04 simon Exp $

COMMENT =	manage deprecation warnings for your distribution

MODULES =	cpan
DISTNAME =	Package-DeprecationManager-0.10
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	devel/p5-List-MoreUtils \
		devel/p5-Params-Util \
		devel/p5-Sub-Install

REGRESS_DEPENDS =	devel/p5-Test-Fatal \
			devel/p5-Test-Requires

.include <bsd.port.mk>
