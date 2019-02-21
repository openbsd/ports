# $OpenBSD: Makefile,v 1.1.1.1 2019/02/21 23:19:30 bluhm Exp $

COMMENT =	retrieve terminal size

DISTNAME =	Term-Size-Any-0.002

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

# Module claims to require Devel::Hide for build, but that is not true.
RUN_DEPENDS =		devel/p5-Term-Size-Perl

MAKE_ENV =		TEST_POD=Yes

PKG_ARCH =		*

.include <bsd.port.mk>
