# $OpenBSD: Makefile,v 1.12 2019/05/03 13:44:26 danj Exp $

COMMENT=	access and modify JPEG metadata

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Image-MetaData-JPEG-0.159
REVISION=	0
CATEGORIES=	graphics

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

pre-configure:
	@find ${WRKSRC} -name '*.orig' -print0 | xargs -0 rm

.include <bsd.port.mk>
