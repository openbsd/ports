# $OpenBSD: Makefile,v 1.7 2012/04/08 21:58:04 sthen Exp $

COMMENT =	make Catalyst request contexts available in models and views

MODULES =	cpan
DISTNAME =	Catalyst-Component-ACCEPT_CONTEXT-0.07
CATEGORIES =	www
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	www/p5-Catalyst-Runtime \
		devel/p5-MRO-Compat
REGRESS_DEPENDS =	devel/p5-Devel-Cycle

CONFIGURE_ARGS = --skipdeps

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
