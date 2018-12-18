# $OpenBSD: Makefile,v 1.1.1.1 2018/12/18 09:20:20 bentley Exp $

COMMENT =	stringprep profile for Internationalized Domain Names

DISTNAME =	Net-IDN-Nameprep-1.102
CATEGORIES =	converters net

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*

CONFIGURE_STYLE =	modinst

RUN_DEPENDS =		converters/p5-Unicode-Stringprep
TEST_DEPENDS =		devel/p5-Test-NoWarnings

.include <bsd.port.mk>
