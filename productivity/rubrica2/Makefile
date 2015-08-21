# $OpenBSD: Makefile,v 1.25 2015/08/21 14:42:50 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	addressbook manager

DISTNAME=	rubrica2-2.0.7
REVISION=	11
EPOCH=		0

CATEGORIES=	productivity x11

EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS +=  ral                  0.0      # .1.0

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo dbus-1
WANTLIB += dbus-glib-1 drm expat ffi fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz lzma m
WANTLIB += notify pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs stdc++ xcb xcb-render xcb-shm xml2
WANTLIB += z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=rubrica.berlios/}

MODULES=	devel/gettext \
		textproc/intltool \
		devel/gconf2

USE_GMAKE=	Yes

MODGCONF2_SCHEMAS_DIR= rubrica2

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include"

RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info

LIB_DEPENDS=	devel/libnotify>=0.7.2 \
		devel/libglade2

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure
	@find ${WRKSRC} -name Makefile.in -exec sed -i \
		-e 's,-Wall -g,-Wall,g;' \
		-e 's,-Wmissing-prototypes -g,-Wmissing-prototypes,g' {} \;

post-install:
	ln -sf ${LOCALBASE}/share/icons/gnome \
		${PREFIX}/share/pixmaps/rubrica2/22x22/hicolor

.include <bsd.port.mk>
