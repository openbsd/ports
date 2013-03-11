# $OpenBSD: Makefile,v 1.8 2013/03/11 11:44:44 espie Exp $

COMMENT =	make Catalyst request contexts available in models and views

MODULES =	cpan
DISTNAME =	Catalyst-Component-ACCEPT_CONTEXT-0.07
CATEGORIES =	www
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	www/p5-Catalyst-Runtime \
		devel/p5-MRO-Compat
TEST_DEPENDS =	devel/p5-Devel-Cycle

CONFIGURE_ARGS = --skipdeps

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
