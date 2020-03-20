# $OpenBSD: Makefile,v 1.14 2020/03/20 16:44:24 naddy Exp $

COMMENT=	access and modify JPEG metadata

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Image-MetaData-JPEG-0.159
REVISION=	0
CATEGORIES=	graphics

# GPLv2
PERMIT_PACKAGE=	Yes

pre-configure:
	@find ${WRKSRC} -name '*.orig' -delete

.include <bsd.port.mk>
