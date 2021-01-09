# $OpenBSD: Makefile,v 1.2 2021/01/09 14:34:26 bluhm Exp $

COMMENT =	introspect overloaded operators

DISTNAME =	Devel-OverloadInfo-0.005

CATEGORIES =	devel

MAINTAINER =	Wen Heping <wenheping2000@hotmail.com>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-MRO-Compat \
			devel/p5-Package-Stash>=0.14 \
			devel/p5-Sub-Identify
TEST_DEPENDS =		devel/p5-Test-Fatal \
			devel/p5-Test-Spelling

PKG_ARCH =		*

.include <bsd.port.mk>
