# $OpenBSD: Makefile,v 1.3 2007/06/05 08:00:44 ajacoutot Exp $

COMMENT=	"audio visualization plugin for the X-Window System"

DISTNAME=	extace-1.9.6
PKGNAME=	${DISTNAME}p1
CATEGORIES=	x11 audio

HOMEPAGE=	http://extace.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=extace/}

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xi audiofile c gdk glib \
		gmodule gthread gtk jpeg m png pthread tiff ungif z

MODULES=	devel/gettext
LIB_DEPENDS=	esd.>=2::audio/esound \
		fftw3.>=4::math/fftw3 \
		gdk_imlib.>=19::graphics/imlib

USE_X11=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=	${CONFIGURE_SHARED}

pre-configure:
	perl -pi -e 's,-O2 ,${CFLAGS},g' ${WRKSRC}/configure

.include <bsd.port.mk>
