# $OpenBSD: Makefile,v 1.66 2013/10/11 23:48:11 naddy Exp $

COMMENT=	desktop organizer software for the palm pilot

DISTNAME=	jpilot-1.8.0
REVISION=	4
CATEGORIES=	comms

MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.jpilot.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs xcb z pisock>=11
WANTLIB += gcrypt>=14 gtk-x11-2.0 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += GL Xxf86vm drm ffi gthread-2.0 stdc++ xcb-render xcb-shm

LIB_DEPENDS=	comms/pilot-link \
		security/libgcrypt \
		x11/gtk+2
RUN_DEPENDS=	devel/desktop-file-utils

MODULES=	devel/gettext \
		textproc/intltool

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-pilot-prefix=${LOCALBASE} \
		--with-gtk-prefix=${LOCALBASE}

MAKE_FLAGS=	mkdir_p='mkdir -p'

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/jpilot.xpm ${PREFIX}/share/pixmaps

.include <bsd.port.mk>
