# $OpenBSD: Makefile,v 1.37 2016/11/04 11:35:18 sthen Exp $

COMMENT=	graphical networked AD&D style game

VERSION=	1.71.0
DISTNAME=	crossfire-client-${VERSION}
CATEGORIES=	games x11
REVISION=	0

HOMEPAGE=	http://crossfire.real-time.com/

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += GL GLU SDL SDL_image SDL_mixer X11 Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo crypto
WANTLIB += curl fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gobject-2.0 gtk-x11-2.0 m nghttp2 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 png pthread ssl z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=crossfire/}

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		crossfire-client-images-${VERSION}${EXTRACT_SUFX}
EXTRACT_SUFX=	.tar.bz2

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
