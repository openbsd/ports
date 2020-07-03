# $OpenBSD: Makefile,v 1.5 2020/07/03 21:44:37 sthen Exp $

COMMENT =	very complete easy-to-use OO interface to DBI

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	DBIx-Simple-1.37
CATEGORIES =	databases
REVISION =	0

# Perl
PERMIT_PACKAGE =		Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	databases/p5-DBI

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
