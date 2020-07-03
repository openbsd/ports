# $OpenBSD: Makefile,v 1.17 2020/07/03 21:45:16 sthen Exp $

COMMENT =	Perl extension to test methods for warnings

DISTNAME =	Test-Warn-0.36
CATEGORIES =	devel
REVISION =	0

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl_5
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

MAKE_ENV+=	TEST_POD=Yes

RUN_DEPENDS =	devel/p5-Sub-Uplevel>=0.12

.include <bsd.port.mk>
