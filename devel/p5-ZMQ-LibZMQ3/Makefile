# $OpenBSD: Makefile,v 1.1.1.1 2014/07/14 08:39:21 giovanni Exp $

SHARED_ONLY =	Yes

COMMENT =	libzmq 3.x wrapper for Perl

MODULES =	cpan
DISTNAME =	ZMQ-LibZMQ3-1.18
CATEGORIES =	devel

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
		net/p5-Test-TCP

.include <bsd.port.mk>
