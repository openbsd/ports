# $OpenBSD: Makefile,v 1.16 2019/07/12 20:43:51 sthen Exp $

COMMENT =	stringprep profile for Internationalized Domain Names

DISTNAME =	Net-IDN-Nameprep-1.102
CATEGORIES =	converters net

# perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*

CONFIGURE_STYLE =	modinst

RUN_DEPENDS =		converters/p5-Unicode-Stringprep
TEST_DEPENDS =		devel/p5-Test-NoWarnings

.include <bsd.port.mk>
