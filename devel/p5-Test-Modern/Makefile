# $OpenBSD: Makefile,v 1.2 2020/07/03 21:45:14 sthen Exp $

COMMENT =	precision testing for modern perl

DISTNAME =	Test-Modern-0.013
REVISION =	0

CATEGORIES =	devel

MAINTAINER =	Wen Heping <wenheping2000@hotmail.com>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

MAKE_ENV =		TEST_POD=yes

RUN_DEPENDS =		devel/p5-Test-API>=0.004 \
			devel/p5-Exporter-Tiny>=0.030 \
			devel/p5-Import-Into>=1.0020 \
			devel/p5-Module-Runtime>=0.012 \
			devel/p5-Test-Deep>=0.111 \
			devel/p5-Test-Fatal>=0.007 \
			devel/p5-Test-Warnings>=0.009 \
			devel/p5-Try-Tiny>=0.15
TEST_DEPENDS =		devel/p5-Moose \
			devel/p5-namespace-clean \
			www/p5-libwww

PKG_ARCH =		*

.include <bsd.port.mk>
