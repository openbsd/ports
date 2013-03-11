# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:13 espie Exp $

COMMENT =	make NEXT suck less

MODULES =	cpan
DISTNAME =	Class-C3-Adopt-NEXT-0.09
REVISION =	0
CATEGORIES =	devel
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =		devel/p5-MRO-Compat \
			devel/p5-List-MoreUtils

TEST_DEPENDS =	devel/p5-Test-Exception

.include <bsd.port.mk>
