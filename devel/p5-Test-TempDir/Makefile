# $OpenBSD: Makefile,v 1.11 2019/07/12 21:02:18 sthen Exp $

COMMENT=		temporary files support for testing

DISTNAME =		Test-TempDir-0.10
FIX_EXTRACT_PERMISSIONS=Yes

CATEGORIES=		devel

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-MooseX-Types-Path-Class \
			sysutils/p5-File-NFSLock
TEST_DEPENDS =		devel/p5-Test-Requires \
			devel/p5-Directory-Scratch

.include <bsd.port.mk>
