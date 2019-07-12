# $OpenBSD: Makefile,v 1.2 2019/07/12 20:48:40 sthen Exp $

COMMENT =	sane APIs for IP addresses and networks

DISTNAME =	Net-Works-0.22

CATEGORIES =	net

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan

RUN_DEPENDS =	devel/p5-List-AllUtils \
		devel/p5-Moo \
		devel/p5-Sub-Quote \
		devel/p5-namespace-autoclean>=0.16 \
		math/p5-Math-Int128>=0.06

TEST_DEPENDS =	devel/p5-Test-Fatal

PKG_ARCH =	*

.include <bsd.port.mk>
