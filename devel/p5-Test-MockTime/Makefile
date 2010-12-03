# $OpenBSD: Makefile,v 1.3 2010/12/03 11:44:36 ajacoutot Exp $

COMMENT =	replaces actual time with simulated time

MODULES =	cpan
DISTNAME =	Test-MockTime-0.09
REVISION =	0
CATEGORIES =	devel
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
