# $OpenBSD: Makefile,v 1.17 2020/07/03 21:44:33 sthen Exp $

COMMENT =	stringprep profile for Internationalized Domain Names

DISTNAME =	Net-IDN-Nameprep-1.102
CATEGORIES =	converters net
REVISION =	0

# perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*

CONFIGURE_STYLE =	modinst

RUN_DEPENDS =		converters/p5-Unicode-Stringprep
TEST_DEPENDS =		devel/p5-Test-NoWarnings

.include <bsd.port.mk>
