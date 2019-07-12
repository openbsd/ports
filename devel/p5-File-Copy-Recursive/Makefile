# $OpenBSD: Makefile,v 1.18 2019/07/12 20:44:54 sthen Exp $

COMMENT=	recursive copy of files and directories

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	File-Copy-Recursive-0.44
CATEGORIES=	devel

# perl
PERMIT_PACKAGE=	Yes

TEST_DEPENDS=		devel/p5-Path-Tiny \
			devel/p5-Test-Deep \
			devel/p5-Test-Fatal \
			devel/p5-Test-File \
			devel/p5-Test-Warnings

.include <bsd.port.mk>
