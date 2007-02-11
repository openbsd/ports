# $OpenBSD: Makefile,v 1.2 2007/02/11 00:56:57 steven Exp $

COMMENT=	"MAL plugin for J-Pilot"

DISTNAME=	jpilot-syncmal-0.80
PKGNAME=	${DISTNAME}p0
CATEGORIES=	comms palm

HOMEPAGE=	http://jasonday.home.att.net/code/syncmal/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB=	ICE SM X11 Xext Xrender fontconfig freetype m z \
		atk-1.0.>=1011 cairo.>=4 gdk-x11-2.0.>=802 \
		gdk_pixbuf-2.0.>=802 glib-2.0.>=1000 glitz.>=1 \
		gmodule-2.0.>=1000 gobject-2.0.>=1000 \
		gtk-x11-2.0.>=802 pango-1.0.>=1200 \
		pangocairo-1.0.>=1200 pangoft2-1.0.>=1200

MODULES=	devel/gettext
RUN_DEPENDS=	::comms/jpilot
LIB_DEPENDS=	pisock.>=9::comms/pilot-link \
		mal.>=1::comms/libmal \
		png.>=5::graphics/png

USE_X11=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="-I/usr/local/include/libmal" \
		LDFLAGS="-L/usr/local/lib -pthread -lmal"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-libmal=${LOCALBASE} \
		--enable-static \
		--enable-gtk2

.include <bsd.port.mk>
