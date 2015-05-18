# $OpenBSD: Makefile,v 1.10 2015/05/18 17:26:06 giovanni Exp $

COMMENT=	access and modify JPEG metadata

MODULES=	cpan
DISTNAME=	Image-MetaData-JPEG-0.159
CATEGORIES=	graphics

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

pre-configure:
	@find ${WRKSRC} -name '*.orig' -print0 | xargs -0 rm

.include <bsd.port.mk>
