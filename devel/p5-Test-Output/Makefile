# $OpenBSD: Makefile,v 1.12 2017/04/30 08:03:12 benoit Exp $

COMMENT= 	test output of other modules

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Test-Output-1.031
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/p5-Test-Tester \
			sysutils/p5-Capture-Tiny

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
