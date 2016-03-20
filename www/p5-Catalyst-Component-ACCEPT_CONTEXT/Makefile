# $OpenBSD: Makefile,v 1.11 2016/03/20 19:57:14 naddy Exp $

COMMENT =	make Catalyst request contexts available in models and views

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Catalyst-Component-ACCEPT_CONTEXT-0.07
CATEGORIES =	www
REVISION =	0

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	www/p5-Catalyst-Runtime \
		devel/p5-MRO-Compat
TEST_DEPENDS =	devel/p5-Devel-Cycle

CONFIGURE_ARGS = --skipdeps

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
