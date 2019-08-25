# $OpenBSD: Makefile,v 1.1.1.1 2019/08/25 23:07:47 afresh1 Exp $

COMMENT =	type constraints and coercions for Perl

DISTNAME =	Specio-0.43

CATEGORIES =	devel

MAINTAINER =	Wen Heping <wenheping2000@hotmail.com>

# Artistic 2.0
PERMIT_PACKAGE =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Devel-StackTrace \
			devel/p5-Eval-Closure \
			devel/p5-MRO-Compat \
			devel/p5-Module-Runtime \
			devel/p5-Role-Tiny>=1.003003 \
			devel/p5-Sub-Quote \
			devel/p5-Try-Tiny
TEST_DEPENDS =		devel/p5-Moo \
			devel/p5-Test-Fatal \
			devel/p5-Test-Needs \
			devel/p5-namespace-autoclean

PKG_ARCH =		*

CPAN_AUTHOR =		DROLSKY

.include <bsd.port.mk>
