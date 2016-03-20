# $OpenBSD: Makefile,v 1.14 2016/03/20 19:56:39 naddy Exp $

COMMENT =	Perl extension to test methods for warnings

DISTNAME =	Test-Warn-0.30
CATEGORIES =	devel

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
PKG_ARCH =	*

MAKE_ENV+=	TEST_POD=Yes

RUN_DEPENDS =	devel/p5-Sub-Uplevel

.include <bsd.port.mk>
