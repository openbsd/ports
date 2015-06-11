# $OpenBSD: Makefile,v 1.14 2015/06/11 07:13:58 benoit Exp $

COMMENT =	stringprep profile for Internationalized Domain Names

DISTNAME =	Net-IDN-Nameprep-1.102
CATEGORIES =	converters net

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

CONFIGURE_STYLE =	modinst

RUN_DEPENDS =		converters/p5-Unicode-Stringprep
TEST_DEPENDS =		devel/p5-Test-NoWarnings

.include <bsd.port.mk>
