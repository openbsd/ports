# $OpenBSD: Makefile,v 1.2 2009/05/20 06:40:40 pea Exp $

COMMENT =	create machine readable date/time with natural parsing logic

MODULES =	cpan
DISTNAME =	DateTime-Format-Natural-0.76
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		::devel/p5-Date-Calc \
			::devel/p5-DateTime \
			::devel/p5-List-MoreUtils \
			::devel/p5-Params-Validate \
			::devel/p5-boolean
REGRESS_DEPENDS =	::devel/p5-Test-MockTime

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
