# $OpenBSD: Makefile,v 1.7 2015/01/21 14:27:57 sthen Exp $

COMMENT =	create machine readable date/time with natural parsing logic

MODULES =	cpan
DISTNAME =	DateTime-Format-Natural-0.76
REVISION =	0
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		devel/p5-Date-Calc \
			devel/p5-DateTime \
			devel/p5-List-MoreUtils \
			devel/p5-Params-Validate \
			devel/p5-boolean
TEST_DEPENDS =	devel/p5-Test-MockTime

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
