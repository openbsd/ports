# $OpenBSD: Makefile,v 1.1.1.1 2008/09/06 10:33:55 simon Exp $

COMMENT =	make Catalyst request contexts available in models and views

MODULES =	cpan
DISTNAME =	Catalyst-Component-ACCEPT_CONTEXT-0.05
CATEGORIES =	www

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	::www/p5-Catalyst-Runtime
BUILD_DEPENDS =	::devel/p5-Devel-Cycle

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
