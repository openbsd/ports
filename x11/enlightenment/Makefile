# $OpenBSD: Makefile,v 1.2 1999/10/08 04:13:39 brad Exp $

DISTNAME=	enlightenment-0.15.5
CATEGORIES=     x11
MASTER_SITES=	ftp://www.rasterman.com/pub/enlightenment/enlightenment/

MAINTAINER=	op21@squish.org

LIB_DEPENDS=	esd.2.15:${PORTSDIR}/audio/esound \
		Fnlib.0.4:${PORTSDIR}/graphics/fnlib \
		gif.4.1:${PORTSDIR}/graphics/giflib \
		Imlib.1.9:${PORTSDIR}/graphics/imlib \
		tiff.3.4:${PORTSDIR}/graphics/tiff34 \
		ttf.1.2:${PORTSDIR}/print/freetype \
		ghttp:${PORTSDIR}/www/libghttp

USE_X11=	yes 
USE_GMAKE=	yes
SEPARATE_BUILD=	yes
GNU_CONFIGURE=	yes 
CONFIGURE_ARGS=	--enable-fsstd
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
