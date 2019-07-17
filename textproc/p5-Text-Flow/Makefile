# $OpenBSD: Makefile,v 1.3 2019/07/17 14:39:43 danj Exp $

COMMENT =	flexible text flowing and word wrapping

DISTNAME =	Text-Flow-0.01
CATEGORIES =	textproc
REVISION =	0

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
