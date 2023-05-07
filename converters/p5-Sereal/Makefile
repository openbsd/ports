COMMENT =	fast, compact, powerful binary (de-)serialization

VERSION =	5.004
DISTNAME =	Sereal-${VERSION}
CPAN_AUTHOR =	YVES

CATEGORIES =	converters

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		converters/p5-Sereal-Decoder>=${VERSION} \
			converters/p5-Sereal-Encoder>=${VERSION}
TEST_DEPENDS =		converters/p5-JSON-XS \
			devel/p5-Test-Deep \
			devel/p5-Test-Differences \
			devel/p5-Test-LongString \
			devel/p5-Test-Warn

PKG_ARCH =		*

.include <bsd.port.mk>
