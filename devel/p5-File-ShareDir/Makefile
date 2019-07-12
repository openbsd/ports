# $OpenBSD: Makefile,v 1.15 2019/07/12 20:44:55 sthen Exp $

COMMENT=	locate install data per-module

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	File-ShareDir-1.116

CATEGORIES=	devel

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Class-Inspector>=1.12 \
		devel/p5-File-ShareDir-Install>=0.13

.include <bsd.port.mk>
