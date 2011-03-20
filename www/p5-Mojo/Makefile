# $OpenBSD: Makefile,v 1.7 2011/03/20 09:10:15 landry Exp $

COMMENT =	next generation web framework

MODULES =	cpan
DISTNAME =	Mojolicious-1.14
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
