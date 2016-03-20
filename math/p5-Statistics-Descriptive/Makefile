# $OpenBSD: Makefile,v 1.15 2016/03/20 19:56:48 naddy Exp $

COMMENT =		basic descriptive statistical functions

DISTNAME =		Statistics-Descriptive-3.0612
CATEGORIES =		math

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*

CONFIGURE_STYLE =	modbuild
MODCPAN_EXAMPLES =	Yes
MAKE_ENV +=		TEST_POD=Yes

RUN_DEPENDS =		devel/p5-List-MoreUtils
TEST_DEPENDS +=		devel/p5-Test-TrailingSpace

.include <bsd.port.mk>
