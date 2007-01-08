# $OpenBSD: Makefile,v 1.1.1.1 2007/01/08 11:00:40 ajacoutot Exp $

COMMENT=	"audio visualization plugin for the X-Window System"

DISTNAME=	extace-1.9.6
CATEGORIES=	x11 audio

HOMEPAGE=	http://extace.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=extace/}

WANTLIB=	ICE SM X11 Xext Xi c m pthread z jpeg png tiff ungif

MODULES=	devel/gettext
LIB_DEPENDS=	audiofile::devel/libaudiofile \
		esd.>=2::audio/esound \
		fftw3.>=4::math/fftw3 \
		gdk.>=2,gtk.>=2::x11/gtk+ \
		gdk_imlib.>=19::graphics/imlib \
		glib.>=1,gmodule.>=1,gthread.>=1::devel/glib

USE_X11=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=	${CONFIGURE_SHARED}

pre-configure:
	perl -pi -e 's,-O2 ,${CFLAGS},g' ${WRKSRC}/configure

.include <bsd.port.mk>
