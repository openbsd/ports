# $OpenBSD: Makefile,v 1.13 2020/07/03 21:44:35 sthen Exp $

COMMENT =	mock database driver for testing

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	DBD-Mock-1.55
CATEGORIES =	databases devel
REVISION =	0

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS =	databases/p5-DBI>=1.3

TEST_DEPENDS =	devel/p5-Test-Exception>=0.31

CONFIGURE_STYLE=modbuild tiny

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
