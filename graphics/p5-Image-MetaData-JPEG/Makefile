# $OpenBSD: Makefile,v 1.13 2019/07/12 20:47:07 sthen Exp $

COMMENT=	access and modify JPEG metadata

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Image-MetaData-JPEG-0.159
REVISION=	0
CATEGORIES=	graphics

# GPLv2
PERMIT_PACKAGE=	Yes

pre-configure:
	@find ${WRKSRC} -name '*.orig' -print0 | xargs -0 rm

.include <bsd.port.mk>
