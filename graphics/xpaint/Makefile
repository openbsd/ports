# $OpenBSD: Makefile,v 1.24 2001/06/13 03:53:39 kevlo Exp $

COMMENT=	"simple paint program"

DISTNAME=	xpaint-2.6.1
CATEGORIES=	graphics x11
NEED_VERSION=	1.402

HOMEPAGE=	http://home.worldonline.dk/~torsten/xpaint/

MAINTAINER=	ports@openbsd.org

# LICENSE_TYPE=		BSD
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
