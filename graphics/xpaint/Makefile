# $OpenBSD: Makefile,v 1.30 2002/10/27 00:03:17 naddy Exp $

COMMENT=		"simple paint program"

DISTNAME=		xpaint-2.6.2
CATEGORIES=		graphics x11

HOMEPAGE=		http://home.worldonline.dk/torsten/xpaint/

MASTER_SITES=		${HOMEPAGE}

MAINTAINER=		Margarida Sequeira <niness@devilness.org>

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=		jpeg.62::graphics/jpeg \
			tiff.35::graphics/tiff \
			png.2::graphics/png

CONFIGURE_STYLE= 	imake

WRKDIST=		${WRKDIR}/xpaint

NO_REGRESS=		Yes

.include <bsd.port.mk>
