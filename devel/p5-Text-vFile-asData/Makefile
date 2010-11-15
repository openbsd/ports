# $OpenBSD: Makefile,v 1.3 2010/11/15 19:46:06 espie Exp $

COMMENT =	parse vFile formatted files into data structures

DISTNAME =	Text-vFile-asData-0.05

CATEGORIES =	devel textproc

MODULES =	cpan
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =		devel/p5-Class-Accessor-Chained

REGRESS_DEPENDS =	devel/p5-Test-Pod

.include <bsd.port.mk>
