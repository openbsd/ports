# $OpenBSD: Makefile,v 1.6 2010/12/03 11:46:53 ajacoutot Exp $

COMMENT =	framework for web frameworks

MODULES =	cpan
DISTNAME =	Mojo-0.991237
REVISION =	0
CATEGORIES =	www
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

CPAN_AUTHOR =	SRI

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
