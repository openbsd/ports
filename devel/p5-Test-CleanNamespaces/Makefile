# $OpenBSD: Makefile,v 1.1.1.1 2020/08/19 02:18:11 afresh1 Exp $

COMMENT =	check for uncleaned imports

DISTNAME =	Test-CleanNamespaces-0.24

CATEGORIES =	devel

FIX_EXTRACT_PERMISSIONS =	Yes

MAINTAINER =	Wen Heping <wenheping2000@hotmail.com>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	devel/p5-Module-Runtime \
		devel/p5-Package-Stash>=0.14 \
		devel/p5-Sub-Identify
TEST_DEPENDS =	devel/p5-File-pushd \
		devel/p5-Moo \
		devel/p5-Moose \
		devel/p5-MooseX-Role-Parameterized \
		devel/p5-Mouse \
		devel/p5-Sub-Exporter \
		devel/p5-Test-Deep \
		devel/p5-Test-Needs \
		devel/p5-Test-Warnings>=0.009 \
		devel/p5-namespace-clean

MAKE_ENV +=	AUTOMATED_TESTING=1

.include <bsd.port.mk>
