# $OpenBSD: Makefile,v 1.11 2016/03/20 19:56:38 naddy Exp $

COMMENT= 	test output of other modules

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Test-Output-1.03
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS=		devel/p5-Sub-Exporter \
			devel/p5-Test-Tester \
			sysutils/p5-Capture-Tiny

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
