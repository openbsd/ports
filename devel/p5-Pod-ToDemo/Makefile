# $OpenBSD: Makefile,v 1.2 2010/10/18 17:48:05 espie Exp $

COMMENT =		Write a demo program from a tutorial POD

MODULES =		cpan
DISTNAME =		Pod-ToDemo-1.01
CATEGORIES =		devel
CPAN_AUTHOR =		CHROMATIC
USE_GROFF =	Yes

MAINTAINER =		James Wright <jamesw@bsdhosting.co.za>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

REGRESS_DEPENDS =	::devel/p5-Test-Exception

.include <bsd.port.mk>
