# $OpenBSD: Makefile,v 1.4 2019/07/12 20:45:14 sthen Exp $

COMMENT =	Perl-ish Interface to libzmq

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	ZMQ-1.06
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

CPAN_AUTHOR = 	DMAKI

RUN_DEPENDS =	devel/p5-ZMQ-Constants

TEST_DEPENDS =	devel/p5-ZMQ-LibZMQ3 \
		devel/p5-Sub-Name

.include <bsd.port.mk>
