# $OpenBSD: Makefile,v 1.3 2014/12/28 12:17:59 benoit Exp $

SHARED_ONLY =	Yes

COMMENT =	libzmq 3.x wrapper for Perl

MODULES =	cpan
DISTNAME =	ZMQ-LibZMQ3-1.19
CATEGORIES =	devel

REVISION =	0

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR = 	DMAKI

WANTLIB =	zmq
LIB_DEPENDS =	net/zeromq
RUN_DEPENDS =	devel/p5-ZMQ-Constants

TEST_DEPENDS =	devel/p5-AnyEvent \
		devel/p5-Task-Weaken \
		devel/p5-Test-Fatal \
		devel/p5-Test-Requires \
		net/p5-Test-TCP \
		devel/p5-Proc-Guard

.include <bsd.port.mk>
