# $OpenBSD: Makefile,v 1.11 2016/03/20 19:56:44 naddy Exp $

COMMENT=	access and modify JPEG metadata

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Image-MetaData-JPEG-0.159
CATEGORIES=	graphics

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

pre-configure:
	@find ${WRKSRC} -name '*.orig' -print0 | xargs -0 rm

.include <bsd.port.mk>
