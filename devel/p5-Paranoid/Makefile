# $OpenBSD: Makefile,v 1.10 2020/07/03 21:45:06 sthen Exp $

COMMENT =	paranoia support for safer programs

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Paranoid-0.36
CATEGORIES =	devel
REVISION =	0

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		sysutils/p5-Unix-Syslog \
			databases/p5-BerkeleyDB

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
