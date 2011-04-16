# $OpenBSD: Makefile,v 1.9 2011/04/16 09:57:35 simon Exp $

COMMENT =	next generation web framework

MODULES =	cpan
DISTNAME =	Mojolicious-1.16
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
