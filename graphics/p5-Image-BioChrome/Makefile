# $OpenBSD: Makefile,v 1.11 2019/07/12 20:47:06 sthen Exp $

COMMENT= 	recolor gif images on the fly

MODULES=	cpan 
PKG_ARCH=	*

DISTNAME=	Image-BioChrome-1.16
REVISION=	1
CATEGORIES=	graphics

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		misc/p5-File-MMagic
TEST_DEPENDS=		textproc/p5-Template \
			www/ap2-mod_perl

.include <bsd.port.mk>
