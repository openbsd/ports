# $OpenBSD: Makefile,v 1.14 2015/11/07 21:58:53 benoit Exp $

COMMENT =	change nature of data within a structure
SHARED_ONLY =	Yes

MODULES =	cpan
DISTNAME =	Data-Structure-Util-0.16
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c

TEST_DEPENDS =		devel/p5-File-Find-Rule
MAKE_ENV =		TEST_POD=Yes

.include <bsd.port.mk>
