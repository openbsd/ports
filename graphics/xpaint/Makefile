# $OpenBSD: Makefile,v 1.28 2002/07/20 00:21:22 pvalchev Exp $

COMMENT=	"simple paint program"

DISTNAME=	xpaint-2.6.1
CATEGORIES=	graphics x11

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
