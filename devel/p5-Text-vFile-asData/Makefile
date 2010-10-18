# $OpenBSD: Makefile,v 1.2 2010/10/18 17:48:09 espie Exp $

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

RUN_DEPENDS =		::devel/p5-Class-Accessor-Chained

REGRESS_DEPENDS =	::devel/p5-Test-Pod

.include <bsd.port.mk>
