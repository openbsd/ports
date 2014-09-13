# $OpenBSD: Makefile,v 1.22 2014/09/13 16:36:54 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	addressbook manager

DISTNAME=	rubrica2-2.0.7
REVISION=	9
EPOCH=		0

CATEGORIES=	productivity x11

EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS +=  ral                  0.0      # .1.0

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=rubrica.berlios/}

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo drm expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glade-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m notify pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm xml2 z
WANTLIB += dbus-1 dbus-glib-1 ffi stdc++

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
	@find ${WRKSRC} -name Makefile.in -exec perl -pi \
		-e 's,-Wall -g,-Wall,g;' \
		-e 's,-Wmissing-prototypes -g,-Wmissing-prototypes,g' {} \;

post-install:
	ln -sf ${LOCALBASE}/share/icons/gnome \
		${PREFIX}/share/pixmaps/rubrica2/22x22/hicolor

.include <bsd.port.mk>
