# $OpenBSD: Makefile,v 1.5 2013/03/11 10:50:15 espie Exp $

BROKEN-powerpc=	Segmentation fault during build

COMMENT =	coroutines for perl

SHARED_ONLY =	Yes
MODULES =	cpan
DISTNAME =	Coro-5.25
REVISION =	0
CATEGORIES =	devel
USE_GROFF =	Yes


# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

BUILD_DEPENDS = ${RUN_DEPENDS}
RUN_DEPENDS = 	devel/p5-Event>=0.89 \
		devel/p5-AnyEvent>=5.00 \
		devel/p5-EV>=3.3 \
		devel/p5-common-sense \
		devel/p5-Guard>=0.5
TEST_DEPENDS = ${RUN_DEPENDS}

# will use hand-made assembler on i386/amd64
# can force it to use sjlj like on other platforms, to
# check things work.

# CONFIGURE_ENV = CORO_INTERFACE=s

.include <bsd.port.mk>
