# $OpenBSD: Makefile,v 1.9 2016/03/20 19:56:44 naddy Exp $

COMMENT= 	recolor gif images on the fly

MODULES=	cpan 
PKG_ARCH=	*

DISTNAME=	Image-BioChrome-1.16
REVISION=	0
CATEGORIES=	graphics

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		misc/p5-File-MMagic
TEST_DEPENDS=	textproc/p5-Template \
			www/mod_perl

.include <bsd.port.mk>
