# $OpenBSD: Makefile,v 1.6 2019/07/12 20:45:14 sthen Exp $

COMMENT =	libzmq 3.x wrapper for Perl

MODULES =	cpan
DISTNAME =	ZMQ-LibZMQ3-1.19
CATEGORIES =	devel

REVISION =	1

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB += c perl zmq

CPAN_AUTHOR = 	DMAKI

LIB_DEPENDS =	net/zeromq
RUN_DEPENDS =	devel/p5-ZMQ-Constants

TEST_DEPENDS =	devel/p5-AnyEvent \
		devel/p5-Task-Weaken \
		devel/p5-Test-Fatal \
		devel/p5-Test-Requires \
		net/p5-Test-TCP \
		devel/p5-Proc-Guard

.include <bsd.port.mk>
