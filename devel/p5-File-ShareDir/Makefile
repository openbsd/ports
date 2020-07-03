# $OpenBSD: Makefile,v 1.16 2020/07/03 21:44:53 sthen Exp $

COMMENT=	locate install data per-module

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	File-ShareDir-1.116
REVISION=	0

CATEGORIES=	devel

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Class-Inspector>=1.12 \
		devel/p5-File-ShareDir-Install>=0.13

.include <bsd.port.mk>
