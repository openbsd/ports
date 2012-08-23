# $OpenBSD: Makefile,v 1.3 2012/08/23 15:50:05 sthen Exp $

SHARED_ONLY =		yes

COMMENT =		efficient generation of combinatorial sequences

DISTNAME =		Algorithm-Combinatorics-0.27
REVISION =		0
CATEGORIES =		math

CPAN_AUTHOR =		FXN

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c

MODULES =		cpan

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
