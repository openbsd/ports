# $OpenBSD: Makefile,v 1.17 2020/11/05 10:26:14 benoit Exp $

COMMENT=	locate install data per-module

MODULES=	cpan
PKG_ARCH=	*

DISTNAME =	File-ShareDir-1.118

CATEGORIES=	devel

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Class-Inspector>=1.12 \
		devel/p5-File-ShareDir-Install>=0.13

.include <bsd.port.mk>
