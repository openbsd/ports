# $OpenBSD: Makefile,v 1.10 2000/03/24 23:28:38 espie Exp $

DISTNAME=	enlightenment-0.16.3
CATEGORIES=     x11
NEED_VERSION=	 1.230
MASTER_SITES=	ftp://www.rasterman.com/pub/enlightenment/enlightenment/ \
		ftp://ftp.enlightenment.org/pub/enlightenment/enlightenment/

MAINTAINER=	op21@squish.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	esd.2.16::audio/esound \
		Fnlib.0.5::graphics/fnlib \
		gif.4.1::graphics/giflib \
		Imlib.19::graphics/imlib \
		tiff.35::graphics/tiff \
		ttf.1.3::print/freetype \
		ghttp.1::www/libghttp

USE_X11=	Yes 
USE_GMAKE=	Yes
SEPARATE_BUILD=	Yes
GNU_CONFIGURE=	Yes 
CONFIGURE_ARGS=	--enable-fsstd
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
