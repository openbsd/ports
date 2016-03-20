# $OpenBSD: Makefile,v 1.2 2016/03/20 19:56:37 naddy Exp $

COMMENT=		create fake sharedir for testing

DISTNAME=		Test-File-ShareDir-1.001001
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-File-ShareDir \
			devel/p5-File-Copy-Recursive \
			devel/p5-Path-Tiny \
			devel/p5-Scope-Guard \
			devel/p5-Class-Tiny

TEST_DEPENDS=		devel/p5-Test-Fatal \
			${RUN_DEPENDS}

.include <bsd.port.mk>
