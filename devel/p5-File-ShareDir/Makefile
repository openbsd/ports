# $OpenBSD: Makefile,v 1.14 2019/05/07 20:10:58 cwen Exp $

COMMENT=	locate install data per-module

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	File-ShareDir-1.116

CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Class-Inspector>=1.12 \
		devel/p5-File-ShareDir-Install>=0.13

.include <bsd.port.mk>
