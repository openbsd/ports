# $OpenBSD: Makefile,v 1.37 2019/07/12 20:48:59 sthen Exp $

COMMENT=	addressbook manager

DISTNAME=	rubrica2-2.0.7
REVISION=	18
EPOCH=		0

CATEGORIES=	productivity x11

EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS +=  ral                  0.0      # .1.0

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo dbus-1
WANTLIB += dbus-glib-1 drm expat ffi fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0 gmodule-2.0 gobject-2.0 
WANTLIB += graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz iconv intl lzma m
WANTLIB += notify pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread ${COMPILER_LIBCXX} xcb xcb-render xcb-shm xml2
WANTLIB += z fribidi

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=rubrica.berlios/}

MODULES=	textproc/intltool \
		devel/gconf2

USE_GMAKE=	Yes

MODGCONF2_SCHEMAS_DIR= rubrica2

CONFIGURE_STYLE=gnu
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
