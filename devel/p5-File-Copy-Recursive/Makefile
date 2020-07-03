# $OpenBSD: Makefile,v 1.20 2020/07/03 21:44:52 sthen Exp $

COMMENT=	recursive copy of files and directories

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	File-Copy-Recursive-0.45
CATEGORIES=	devel
REVISION =	0

# perl
PERMIT_PACKAGE=	Yes

TEST_DEPENDS=		devel/p5-Path-Tiny \
			devel/p5-Test-Deep \
			devel/p5-Test-Fatal \
			devel/p5-Test-File \
			devel/p5-Test-Warnings

.include <bsd.port.mk>
