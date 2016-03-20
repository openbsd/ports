# $OpenBSD: Makefile,v 1.12 2016/03/20 19:56:23 naddy Exp $

COMMENT=	locate install data per-module

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	File-ShareDir-1.102
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Inspector \
		devel/p5-File-ShareDir-Install

.include <bsd.port.mk>
