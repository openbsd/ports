# $OpenBSD: Makefile,v 1.16 2019/07/12 20:47:45 sthen Exp $

COMMENT =		basic descriptive statistical functions

DISTNAME =		Statistics-Descriptive-3.0612
CATEGORIES =		math

# perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*

CONFIGURE_STYLE =	modbuild
MODCPAN_EXAMPLES =	Yes
MAKE_ENV +=		TEST_POD=Yes

RUN_DEPENDS =		devel/p5-List-MoreUtils
TEST_DEPENDS +=		devel/p5-Test-TrailingSpace

.include <bsd.port.mk>
