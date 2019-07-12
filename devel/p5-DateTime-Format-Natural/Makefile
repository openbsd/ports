# $OpenBSD: Makefile,v 1.10 2019/07/12 20:44:51 sthen Exp $

COMMENT =	create machine readable date/time with natural parsing logic

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	DateTime-Format-Natural-0.76
REVISION =	1
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =		Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		devel/p5-Date-Calc \
			devel/p5-DateTime \
			devel/p5-List-MoreUtils \
			devel/p5-Params-Validate \
			devel/p5-boolean
TEST_DEPENDS =	devel/p5-Test-MockTime

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
