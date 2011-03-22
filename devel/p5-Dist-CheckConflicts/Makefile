# $OpenBSD: Makefile,v 1.1.1.1 2011/03/22 23:17:59 simon Exp $

COMMENT =	declare version conflicts for your dist

MODULES =	cpan
DISTNAME =	Dist-CheckConflicts-0.02
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	devel/p5-List-MoreUtils \
		devel/p5-Sub-Exporter

REGRESS_DEPENDS =	devel/p5-Test-Fatal

.include <bsd.port.mk>
