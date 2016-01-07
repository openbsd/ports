# $OpenBSD: Makefile,v 1.12 2016/01/07 07:56:58 benoit Exp $

COMMENT =		basic descriptive statistical functions

DISTNAME =		Statistics-Descriptive-3.0610
CATEGORIES =		math

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

CONFIGURE_STYLE =	modbuild
MODCPAN_EXAMPLES =	Yes
MAKE_ENV +=		TEST_POD=Yes

RUN_DEPENDS =		devel/p5-List-MoreUtils
TEST_DEPENDS +=		devel/p5-Test-TrailingSpace

.include <bsd.port.mk>
