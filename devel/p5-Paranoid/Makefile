# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:32 naddy Exp $

COMMENT =	paranoia support for safer programs

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Paranoid-0.36
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		sysutils/p5-Unix-Syslog \
			databases/p5-BerkeleyDB

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
