# $OpenBSD: Makefile,v 1.10 2017/12/05 16:25:45 espie Exp $

COMMENT=		temporary files support for testing

DISTNAME =		Test-TempDir-0.10
FIX_EXTRACT_PERMISSIONS=Yes

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-MooseX-Types-Path-Class \
			sysutils/p5-File-NFSLock
TEST_DEPENDS =		devel/p5-Test-Requires \
			devel/p5-Directory-Scratch

.include <bsd.port.mk>
