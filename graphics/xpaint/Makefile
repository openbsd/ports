# $OpenBSD: Makefile,v 1.23 2001/05/24 02:27:44 kevlo Exp $

COMMENT=	"simple paint program"

DISTNAME=	xpaint-2.5.7
CATEGORIES=	graphics x11
NEED_VERSION=	1.402
MASTER_SITES=	http://home.worldonline.dk/~torsten/xpaint/

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		tiff.35::graphics/tiff \
		png.2::graphics/png

CONFIGURE_STYLE=	imake

WRKDIST=	${WRKDIR}/xpaint

.include <bsd.port.mk>
