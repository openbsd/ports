# $OpenBSD: Makefile,v 1.17 2020/07/03 21:44:46 sthen Exp $

COMMENT =	change nature of data within a structure

MODULES =	cpan
DISTNAME =	Data-Structure-Util-0.16
CATEGORIES =	devel
REVISION =	0

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB +=		c perl

TEST_DEPENDS =		devel/p5-File-Find-Rule
MAKE_ENV =		TEST_POD=Yes

.include <bsd.port.mk>
