# $OpenBSD: Makefile,v 1.13 2000/08/21 13:08:41 brad Exp $

DISTNAME=	enlightenment-0.16.3
CATEGORIES=     x11
NEED_VERSION=	1.310
MASTER_SITES=	ftp://ftp.enlightenment.org/pub/enlightenment/enlightenment/ \
		ftp://ftp.dti.ad.jp/pub/X/enlightenment/enlightenment/ \
		ftp://ftp.enlighte.nu/pub/Enlightenment/Enlightenment/ \
		ftp://beaver.its.vu.edu.au/pub/enlightenment/

HOMEPAGE=	http://www.enlightenment.org/

LIB_DEPENDS=	esd.2.16::audio/esound \
		Fnlib.0.5::graphics/fnlib \
		Imlib.19::graphics/imlib \
		ttf.1.3::print/freetype \
		ghttp.1::www/libghttp

MAINTAINER=	op21@squish.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-fsstd
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

.include <bsd.port.mk>
