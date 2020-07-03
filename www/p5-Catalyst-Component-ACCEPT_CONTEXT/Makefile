# $OpenBSD: Makefile,v 1.13 2020/07/03 21:45:56 sthen Exp $

COMMENT =	make Catalyst request contexts available in models and views

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Catalyst-Component-ACCEPT_CONTEXT-0.07
CATEGORIES =	www
REVISION =	1

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =	www/p5-Catalyst-Runtime \
		devel/p5-MRO-Compat
TEST_DEPENDS =	devel/p5-Devel-Cycle

CONFIGURE_ARGS = --skipdeps

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
