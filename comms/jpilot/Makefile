COMMENT=	desktop organizer software for the palm pilot

DISTNAME=	jpilot-1.8.2
CATEGORIES=	comms
REVISION=	4

HOMEPAGE=	http://www.jpilot.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat
WANTLIB += ffi fontconfig freetype fribidi gcrypt gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error graphite2 gtk-x11-2.0 harfbuzz iconv intl
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pisock
WANTLIB += pixman-1 png xcb xcb-render xcb-shm 

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
