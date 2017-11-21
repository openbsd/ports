# $OpenBSD: Makefile,v 1.73 2017/11/21 00:12:59 naddy Exp $

COMMENT=	desktop organizer software for the palm pilot

DISTNAME=	jpilot-1.8.2
CATEGORIES=	comms
REVISION=	1

HOMEPAGE=	http://www.jpilot.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo expat ffi fontconfig freetype gcrypt
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pisock pixman-1 png pthread xcb xcb-render xcb-shm z

MASTER_SITES=	http://www.jpilot.org/

LIB_DEPENDS=	comms/pilot-link \
		security/libgcrypt \
		x11/gtk+2

RUN_DEPENDS=	devel/desktop-file-utils

MODULES=	textproc/intltool

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--with-pilot-prefix=${LOCALBASE}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/jpilot.xpm ${PREFIX}/share/pixmaps
	rm ${PREFIX}/lib/jpilot/plugins/*.{a,la}

.include <bsd.port.mk>
