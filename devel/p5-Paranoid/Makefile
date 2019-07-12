# $OpenBSD: Makefile,v 1.9 2019/07/12 20:45:04 sthen Exp $

COMMENT =	paranoia support for safer programs

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Paranoid-0.36
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		sysutils/p5-Unix-Syslog \
			databases/p5-BerkeleyDB

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
