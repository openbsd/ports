# $OpenBSD: Makefile,v 1.16 2020/07/03 21:44:45 sthen Exp $

COMMENT =	coroutines for perl

MODULES =	cpan
DISTNAME =	Coro-6.511
CATEGORIES =	devel
REVISION =	0

# perl
PERMIT_PACKAGE =	Yes

WANTLIB += c perl pthread

BUILD_DEPENDS = ${RUN_DEPENDS} \
		devel/p5-Canary-Stability
RUN_DEPENDS = 	devel/p5-Event>=0.89 \
		devel/p5-AnyEvent>=5.00 \
		devel/p5-EV>=4.0 \
		devel/p5-common-sense \
		devel/p5-Guard>=0.5

# will use hand-made assembler on i386/amd64
# can force it to use sjlj like on other platforms, to
# check things work.

# CONFIGURE_ENV = CORO_INTERFACE=s

# The Coro JIT violates W^X, so we can't use it.
CONFIGURE_ENV += CORO_JIT=n

.include <bsd.port.mk>
