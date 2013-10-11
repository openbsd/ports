# $OpenBSD: Makefile,v 1.14 2013/10/11 23:49:28 naddy Exp $

COMMENT =	associate user-defined magic to variables from Perl
SHARED_ONLY =	Yes

MODULES =	cpan
DISTNAME =	Variable-Magic-0.45
REVISION =	1
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
