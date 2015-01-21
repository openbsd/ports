# $OpenBSD: Makefile,v 1.8 2015/01/21 14:10:00 sthen Exp $

COMMENT= 	recolor gif images on the fly

MODULES=	cpan 

DISTNAME=	Image-BioChrome-1.16
REVISION=	0
CATEGORIES=	graphics

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		misc/p5-File-MMagic
TEST_DEPENDS=	textproc/p5-Template \
			www/mod_perl

.include <bsd.port.mk>
