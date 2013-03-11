# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:15 espie Exp $

COMMENT =	create machine readable date/time with natural parsing logic

MODULES =	cpan
DISTNAME =	DateTime-Format-Natural-0.76
REVISION =	0
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

CONFIGURE_STYLE =	modbuild
USE_GROFF =		Yes

RUN_DEPENDS =		devel/p5-Date-Calc \
			devel/p5-DateTime \
			devel/p5-List-MoreUtils \
			devel/p5-Params-Validate \
			devel/p5-boolean
TEST_DEPENDS =	devel/p5-Test-MockTime

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
