# $OpenBSD: Makefile,v 1.7 2000/02/12 06:30:06 turan Exp $

DISTNAME=	enlightenment-0.16.3
CATEGORIES=     x11
MASTER_SITES=	ftp://www.rasterman.com/pub/enlightenment/enlightenment/ \
		ftp://ftp.enlightenment.org/pub/enlightenment/enlightenment/

MAINTAINER=	op21@squish.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

LIB_DEPENDS=	esd.2.16:${PORTSDIR}/audio/esound \
		Fnlib.0.5:${PORTSDIR}/graphics/fnlib \
		gif.4.1:${PORTSDIR}/graphics/giflib \
		Imlib.19:${PORTSDIR}/graphics/imlib \
		tiff.35:${PORTSDIR}/graphics/tiff \
		ttf.1.3:${PORTSDIR}/print/freetype \
		ghttp.1:${PORTSDIR}/www/libghttp

USE_X11=	yes 
USE_GMAKE=	yes
SEPARATE_BUILD=	yes
GNU_CONFIGURE=	yes 
CONFIGURE_ARGS=	--enable-fsstd
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
