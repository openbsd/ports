# $OpenBSD: Makefile,v 1.16 2006/08/02 09:36:20 espie Exp $

COMMENT=	"graphical networked AD&D style game"

VERSION=	1.4.0
DISTNAME=	crossfire-client-${VERSION}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	games x11

IMGDIST=	crossfire-client-images-${VERSION}
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${IMGDIST}${EXTRACT_SUFX}

HOMEPAGE=	http://crossfire.real-time.com/

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xext Xi c glib gmodule iconv intl m pthread usbhid z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=crossfire/}

LIB_DEPENDS=   	gtk.>=1.2,gdk.>=1.2::x11/gtk+ \
	        png.>=1::graphics/png \
		SDL.>=1::devel/sdl \
		SDL_image.>=1::devel/sdl-image

CONFIGURE_ARGS=	--disable-gnome	

NO_REGRESS=	Yes

USE_X11=		Yes
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/utils
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

IMG=	bmaps.client crossfire.base crossfire.clsc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/crossfire-client
.for file in ${IMG}
	${INSTALL_DATA} ${WRKDIR}/${file} ${PREFIX}/share/crossfire-client
.endfor

.include <bsd.port.mk>
