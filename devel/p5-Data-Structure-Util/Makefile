# $OpenBSD: Makefile,v 1.16 2019/07/12 20:44:49 sthen Exp $

COMMENT =	change nature of data within a structure

MODULES =	cpan
DISTNAME =	Data-Structure-Util-0.16
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB +=		c perl

TEST_DEPENDS =		devel/p5-File-Find-Rule
MAKE_ENV =		TEST_POD=Yes

.include <bsd.port.mk>
