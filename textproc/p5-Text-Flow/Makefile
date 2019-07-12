# $OpenBSD: Makefile,v 1.2 2019/07/12 20:50:07 sthen Exp $

COMMENT =	flexible text flowing and word wrapping

DISTNAME =	Text-Flow-0.01
CATEGORIES =	textproc

MAINTAINER =		Matthias Pitzl <pitzl@genua.de>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Moose>=0.21
TEST_DEPENDS =		devel/p5-MooseX-Params-Validate>=0.19 \
			devel/p5-Test-Exception>=0.21 \
			devel/p5-Test-LongString \
			devel/p5-Test-Pod>=1.14 \
			devel/p5-Test-Pod-Coverage>=1.04

PKG_ARCH =		*

.include <bsd.port.mk>
