# $OpenBSD: Makefile,v 1.1.1.1 2015/09/28 07:55:48 vgross Exp $

COMMENT=		create fake sharedir for testing

DISTNAME=		Test-File-ShareDir-1.001001
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan

RUN_DEPENDS=		devel/p5-File-ShareDir \
			devel/p5-File-Copy-Recursive \
			devel/p5-Path-Tiny \
			devel/p5-Scope-Guard \
			devel/p5-Class-Tiny

TEST_DEPENDS=		devel/p5-Test-Fatal \
			${RUN_DEPENDS}

.include <bsd.port.mk>
