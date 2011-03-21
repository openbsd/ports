# $OpenBSD: Makefile,v 1.8 2011/03/21 21:50:24 simon Exp $

COMMENT =	next generation web framework

MODULES =	cpan
DISTNAME =	Mojolicious-1.15
CATEGORIES =	www
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

HOMEPAGE =	http://mojolicio.us/

CPAN_AUTHOR =	KRAIH

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
