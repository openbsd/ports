# $OpenBSD: Makefile,v 1.4 2020/07/03 21:44:54 sthen Exp $

COMMENT =	a collection of n-ary tree related modules for Perl

DISTNAME =	Forest-0.10
CATEGORIES =	devel
CPAN_AUTHOR =	STEVAN
REVISION =	1

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Moose>=2.0000 \
			devel/p5-MooseX-Clone>=0.05
TEST_DEPENDS =		devel/p5-Path-Class \
			devel/p5-Test-Exception \
			devel/p5-Test-Pod>=1.14

CONFIGURE_STYLE =	modinst

PKG_ARCH =		*

.include <bsd.port.mk>
