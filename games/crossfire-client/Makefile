# $OpenBSD: Makefile,v 1.36 2015/11/06 13:09:23 jasper Exp $

COMMENT=	graphical networked AD&D style game

VERSION=	1.71.0
DISTNAME=	crossfire-client-${VERSION}
CATEGORIES=	games x11

HOMEPAGE=	http://crossfire.real-time.com/

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=crossfire/}

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		crossfire-client-images-${VERSION}${EXTRACT_SUFX}
EXTRACT_SUFX=	.tar.bz2

WANTLIB += GL GLU SDL SDL_image SDL_mixer X11 Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB += crypto curl fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 idn m nghttp2
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 png pthread ssl
WANTLIB += z

MODULES=	devel/gettext

LIB_DEPENDS=	devel/sdl-image \
		devel/sdl-mixer \
		net/curl \
		x11/gtk+2

CONFIGURE_STYLE=gnu

IMG=	bmaps.client crossfire.base crossfire.clsc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/crossfire-client
.for file in ${IMG}
	${INSTALL_DATA} ${WRKDIR}/${file} ${PREFIX}/share/crossfire-client
.endfor

.include <bsd.port.mk>
