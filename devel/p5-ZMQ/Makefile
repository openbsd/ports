# $OpenBSD: Makefile,v 1.2 2014/12/23 10:37:39 giovanni Exp $

COMMENT =	Perl-ish Interface to libzmq

MODULES =	cpan
DISTNAME =	ZMQ-1.06
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR = 	DMAKI

RUN_DEPENDS =	devel/p5-ZMQ-Constants

TEST_DEPENDS =	devel/p5-ZMQ-LibZMQ3 \
		devel/p5-Sub-Name

.include <bsd.port.mk>
