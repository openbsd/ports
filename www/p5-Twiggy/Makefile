COMMENT =		AnyEvent HTTP server for PSGI (like Thin)

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Twiggy-0.1026
CATEGORIES =		www

# Perl
PERMIT_PACKAGE =	Yes

CPAN_AUTHOR =		MIYAGAWA

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/p5-AnyEvent \
			www/p5-HTTP-Message \
			www/p5-Plack>=0.99 \
			devel/p5-Try-Tiny

TEST_DEPENDS =		devel/p5-AnyEvent-HTTP \
			www/p5-HTTP-Message \
			www/p5-Plack \
			devel/p5-Test-Requires \
			net/p5-Test-TCP

.include <bsd.port.mk>
