# $OpenBSD: Makefile,v 1.15 2018/10/20 17:52:53 afresh1 Exp $

COMMENT =	Perl extension to test methods for warnings

DISTNAME =	Test-Warn-0.36
CATEGORIES =	devel

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
PKG_ARCH =	*

MAKE_ENV+=	TEST_POD=Yes

RUN_DEPENDS =	devel/p5-Sub-Uplevel>=0.12

.include <bsd.port.mk>
