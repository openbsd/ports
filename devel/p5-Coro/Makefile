COMMENT =	coroutines for perl

DISTNAME =	Coro-6.57
PKGNAME =	p5-Coro-6.570
REVISION =	0

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c perl

MODULES =		cpan

BUILD_DEPENDS = 	${RUN_DEPENDS} \
			devel/p5-Canary-Stability
RUN_DEPENDS =		devel/p5-AnyEvent>=5.00 \
			devel/p5-EV>=4.0 \
			devel/p5-Event>=1.08 \
			devel/p5-Guard>=0.5 \
			devel/p5-common-sense

# The hand-made assembler on i386/amd64 fails due to MAP_STACK.
# Force to use setjmp/longjmp/sigaltstack like on other platforms.
CONFIGURE_ENV +=	CORO_INTERFACE=s

# The Coro JIT violates W^X, so we can't use it.
CONFIGURE_ENV +=	CORO_JIT=n

.include <bsd.port.mk>
