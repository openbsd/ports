# $OpenBSD: Makefile,v 1.38 2021/08/31 11:56:51 ajacoutot Exp $

COMMENT=	addressbook manager

DISTNAME=	rubrica2-2.0.8
EPOCH=		0

CATEGORIES=	productivity x11

EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS +=  ral                  0.0      # 1.0

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1
WANTLIB += dbus-glib-1 execinfo expat ffi fontconfig freetype
WANTLIB += fribidi gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz iconv intl jpeg lzma m notify
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png xcb xcb-render xcb-shm xml2 z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=rubrica.berlios/}

MODULES=	devel/gconf2 \
		textproc/intltool

COMPILER=	base-clang ports-gcc base-gcc

USE_GMAKE=	Yes

MODGCONF2_SCHEMAS_DIR= rubrica2

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include"

RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info

LIB_DEPENDS=	devel/libnotify \
		devel/libglade2

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure
	@find ${WRKSRC} -name Makefile.in -exec sed -i \
		-e 's,-Wall -g,-Wall,g;' \
		-e 's,-Wmissing-prototypes -g,-Wmissing-prototypes,g' {} \;

.include <bsd.port.mk>
