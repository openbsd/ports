# $OpenBSD: Makefile,v 1.2 2020/07/03 21:45:06 sthen Exp $

COMMENT =	build an optimized subroutine parameter validator

DISTNAME =	Params-ValidationCompiler-0.30
REVISION =	0

CATEGORIES =	devel

# Artistic 2.0
PERMIT_PACKAGE =	Yes

MAINTAINER =		Wen Heping <wenheping2000@hotmail.com>

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Eval-Closure \
			devel/p5-Exception-Class
TEST_DEPENDS =		devel/p5-Moose \
			devel/p5-Specio>=0.14 \
			devel/p5-Test-Without-Module \
			devel/p5-Test2-Plugin-NoWarnings \
			devel/p5-Test2-Suite \
			devel/p5-Type-Tiny

PKG_ARCH =		*

.include <bsd.port.mk>
