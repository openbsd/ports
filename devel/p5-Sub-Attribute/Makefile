# $OpenBSD: Makefile,v 1.3 2019/07/12 20:45:07 sthen Exp $

COMMENT =	reliable subroutine attribute handlers

DISTNAME =	Sub-Attribute-0.07

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c perl

MODULES =		cpan
BUILD_DEPENDS =		devel/p5-Class-Trigger>=0.14 \
			devel/p5-MRO-Compat>=0.09
TEST_DEPENDS =		devel/p5-Test-Pod>=1.14 \
			devel/p5-Test-Pod-Coverage>=1.04

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	example

.include <bsd.port.mk>
