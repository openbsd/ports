# $OpenBSD: Makefile,v 1.33 2005/02/07 19:01:48 pvalchev Exp $

COMMENT=		"simple paint program"

VERSION=		2.6.2
DISTNAME=		xpaint-${VERSION}
CATEGORIES=		graphics x11

HOMEPAGE=		http://home.worldonline.dk/torsten/xpaint/

MASTER_SITES=		${HOMEPAGE}

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xaw Xext Xmu Xp Xpm Xt c m z

LIB_DEPENDS=		jpeg.62::graphics/jpeg \
			tiff.35::graphics/tiff \
			png.2::graphics/png

CONFIGURE_STYLE= 	imake

WRKDIST=		${WRKDIR}/xpaint

NO_REGRESS=		Yes

.include <bsd.port.mk>
