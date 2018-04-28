# $OpenBSD: Makefile,v 1.13 2018/04/28 13:57:53 ajacoutot Exp $

COMMENT=	locate install data per-module

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	File-ShareDir-1.104
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	devel/p5-Class-Inspector \
		devel/p5-File-ShareDir-Install

RUN_DEPENDS=	devel/p5-Class-Inspector \
		devel/p5-File-ShareDir-Install

.include <bsd.port.mk>
