# $OpenBSD: Makefile,v 1.13 2013/03/11 10:50:24 espie Exp $

COMMENT =	associate user-defined magic to variables from Perl
SHARED_ONLY =	Yes

MODULES =	cpan
DISTNAME =	Variable-Magic-0.45
REVISION =	1
CATEGORIES =	devel
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
