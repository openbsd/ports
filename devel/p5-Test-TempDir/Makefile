# $OpenBSD: Makefile,v 1.9 2017/07/29 13:23:22 bluhm Exp $

COMMENT=		temporary files support for testing

DISTNAME =		Test-TempDir-0.10

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
