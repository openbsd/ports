# $OpenBSD: Makefile,v 1.27 2002/03/21 20:57:09 espie Exp $

COMMENT=	"simple paint program"

DISTNAME=	xpaint-2.6.1
CATEGORIES=	graphics x11
NEED_VERSION=	1.515

HOMEPAGE=	http://home.worldonline.dk/~torsten/xpaint/

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		tiff.35::graphics/tiff \
		png.2::graphics/png

CONFIGURE_STYLE= imake

WRKDIST=	${WRKDIR}/xpaint

.include <bsd.port.mk>
