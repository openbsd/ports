# $OpenBSD: Makefile,v 1.15 2020/07/03 21:45:23 sthen Exp $

COMMENT=	access and modify JPEG metadata

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Image-MetaData-JPEG-0.159
REVISION=	1
CATEGORIES=	graphics

# GPLv2
PERMIT_PACKAGE=	Yes

pre-configure:
	@find ${WRKSRC} -name '*.orig' -delete

.include <bsd.port.mk>
