# $OpenBSD: Makefile,v 1.4 2019/07/18 20:31:13 sthen Exp $

COMMENT =	very complete easy-to-use OO interface to DBI

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	DBIx-Simple-1.37
CATEGORIES =	databases

# Perl
PERMIT_PACKAGE =		Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	databases/p5-DBI

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
