# $OpenBSD: Makefile,v 1.12 2016/04/14 22:21:21 sthen Exp $

COMMENT =	coroutines for perl

MODULES =	cpan
DISTNAME =	Coro-6.49
CATEGORIES =	devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c perl

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

.include <bsd.port.mk>
