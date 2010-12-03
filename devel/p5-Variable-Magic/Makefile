# $OpenBSD: Makefile,v 1.9 2010/12/03 11:44:38 ajacoutot Exp $

COMMENT =	associate user-defined magic to variables from Perl
SHARED_ONLY =	Yes

MODULES =	cpan
DISTNAME =	Variable-Magic-0.43
REVISION =	1
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
