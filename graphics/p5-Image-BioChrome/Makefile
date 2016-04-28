# $OpenBSD: Makefile,v 1.10 2016/04/28 17:38:01 sthen Exp $

COMMENT= 	recolor gif images on the fly

MODULES=	cpan 
PKG_ARCH=	*

DISTNAME=	Image-BioChrome-1.16
REVISION=	1
CATEGORIES=	graphics

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		misc/p5-File-MMagic
TEST_DEPENDS=		textproc/p5-Template \
			www/ap2-mod_perl

.include <bsd.port.mk>
