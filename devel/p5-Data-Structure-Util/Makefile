# $OpenBSD: Makefile,v 1.15 2016/03/20 19:56:18 naddy Exp $

COMMENT =	change nature of data within a structure

MODULES =	cpan
DISTNAME =	Data-Structure-Util-0.16
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c perl

TEST_DEPENDS =		devel/p5-File-Find-Rule
MAKE_ENV =		TEST_POD=Yes

.include <bsd.port.mk>
