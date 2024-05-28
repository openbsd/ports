COMMENT =		communicate with the i3 window manager

DISTNAME =		AnyEvent-I3-0.19

CATEGORIES =		x11 devel

CPAN_AUTHOR =		MSTPLBG

# perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/p5-AnyEvent \
			converters/p5-JSON-XS

# not compatible with PORTS_PRIVSEP
TEST_IS_INTERACTIVE =	x11
TEST_DEPENDS =		x11/i3

.include <bsd.port.mk>
