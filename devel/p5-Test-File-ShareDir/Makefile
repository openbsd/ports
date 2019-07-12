# $OpenBSD: Makefile,v 1.4 2019/07/12 20:45:09 sthen Exp $

COMMENT=		create fake sharedir for testing

DISTNAME =		Test-File-ShareDir-1.001002
CATEGORIES=		devel

# perl
PERMIT_PACKAGE=	Yes

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
