# $OpenBSD: Makefile,v 1.4 2010/10/19 08:02:54 espie Exp $

COMMENT =	make Catalyst request contexts available in models and views

MODULES =	cpan
DISTNAME =	Catalyst-Component-ACCEPT_CONTEXT-0.05
REVISION =	0
CATEGORIES =	www
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	::www/p5-Catalyst-Runtime
BUILD_DEPENDS =	::devel/p5-Devel-Cycle

CONFIGURE_ARGS = --skipdeps

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
