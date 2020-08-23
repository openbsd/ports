# $OpenBSD: Makefile,v 1.1.1.1 2020/08/23 13:27:13 cwen Exp $

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

# POD Spelling tests fail due to missing words /usr/share/dict
MAKE_ENV =		TEST_POD=yes AUTHOR_TESTING=yes

.include <bsd.port.mk>
