# $OpenBSD: Makefile,v 1.1.1.1 1999/04/23 16:23:50 brad Exp $

DISTNAME=	enlightenment-0.15.5
CATEGORIES=     x11
MASTER_SITES=	ftp://www.rasterman.com/pub/enlightenment/enlightenment/

MAINTAINER=	op21@squish.org

LIB_DEPENDS=	esd:${PORTSDIR}/audio/esound \
		Fnlib:${PORTSDIR}/graphics/fnlib \
		gif:${PORTSDIR}/graphics/giflib \
		Imlib:${PORTSDIR}/graphics/imlib \
		tiff:${PORTSDIR}/graphics/tiff34 \
		ttf:${PORTSDIR}/print/freetype \
		ghttp:${PORTSDIR}/www/libghttp

USE_X11=	yes 
USE_GMAKE=	yes
SEPARATE_BUILD=	yes
GNU_CONFIGURE=	yes 
CONFIGURE_ARGS=	--enable-fsstd
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
