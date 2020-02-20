# $OpenBSD: Makefile,v 1.12 2020/02/20 08:41:26 benoit Exp $

COMMENT =	mock database driver for testing

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	DBD-Mock-1.55
CATEGORIES =	databases devel

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS =	databases/p5-DBI>=1.3

TEST_DEPENDS =	devel/p5-Test-Exception>=0.31

CONFIGURE_STYLE=modbuild tiny

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
