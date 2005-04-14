# $OpenBSD: Makefile,v 1.35 2005/04/14 21:29:28 espie Exp $

COMMENT=	"themed window manager"

DISTNAME=	enlightenment-0.16.6
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=enlightenment/}

HOMEPAGE=	http://www.enlightenment.org/

LIB_DEPENDS=	esd.2::audio/esound \
		Fnlib.5::graphics/fnlib \
		ghttp.1::www/libghttp \
		ttf.1.3::print/freetype

MAINTAINER=	Paul Wang <op21@squish.org>

# X11
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE Imlib SM X11 Xext Xinerama Xtst Xxf86vm \
			audiofile c iconv intl jpeg m png tiff ungif z

USE_X11=	Yes
USE_GMAKE=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-fsstd
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include -I${LOCALBASE}/include/freetype1/freetype" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"
# XXX don't find wctype.h yet, since it's useless for now
CONFIGURE_ENV+=	ac_cv_header_wctype_h=no

.include <bsd.port.mk>
