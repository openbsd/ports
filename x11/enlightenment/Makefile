# $OpenBSD: Makefile,v 1.20 2001/03/15 14:42:40 brad Exp $

DISTNAME=	enlightenment-0.16.5
CATEGORIES=     x11
NEED_VERSION=	1.336
MASTER_SITES=	ftp://ftp.enlightenment.org/pub/enlightenment/enlightenment/ \
		http://www.shellhung.org/download/Mirror/enlightenment/enlightenment/ \
		ftp://ftp.dti.ad.jp/pub/X/enlightenment/enlightenment/ \
		ftp://ftp.enlighte.nu/pub/Enlightenment/Enlightenment/ \
		ftp://beaver.its.vu.edu.au/pub/enlightenment/

HOMEPAGE=	http://www.enlightenment.org/

LIB_DEPENDS=	esd.2::audio/esound \
		Fnlib.5::graphics/fnlib \
		ghttp.1::www/libghttp \
		ttf.1.3::print/freetype

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-fsstd
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include -I${LOCALBASE}/include/freetype" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

.include <bsd.port.mk>
