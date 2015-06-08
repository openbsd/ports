# $OpenBSD: Makefile,v 1.7 2015/06/08 15:14:01 benoit Exp $

COMMENT=		temporary files support for testing

DISTNAME =		Test-TempDir-0.10

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan

RUN_DEPENDS=		devel/p5-MooseX-Types-Path-Class \
			sysutils/p5-File-NFSLock
TEST_DEPENDS =		devel/p5-Test-Requires \
			devel/p5-Directory-Scratch \
			devel/p5-Test-use-ok

.include <bsd.port.mk>
