# $OpenBSD: Makefile,v 1.12 2020/07/03 21:45:23 sthen Exp $

COMMENT= 	recolor gif images on the fly

MODULES=	cpan 
PKG_ARCH=	*

DISTNAME=	Image-BioChrome-1.16
REVISION=	2
CATEGORIES=	graphics

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		misc/p5-File-MMagic
TEST_DEPENDS=		textproc/p5-Template \
			www/ap2-mod_perl

.include <bsd.port.mk>
