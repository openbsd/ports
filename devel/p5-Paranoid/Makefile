# $OpenBSD: Makefile,v 1.5 2010/12/03 11:44:34 ajacoutot Exp $

COMMENT =	paranoia support for safer programs

MODULES =	cpan
DISTNAME =	Paranoid-0.23
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
