COMMENT=	printed circuit board layout tool
DISTNAME=	pcb-4.3.0
CATEGORIES=	cad
EPOCH=		0

HOMEPAGE=	http://pcb.geda-project.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += GL GLU X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 fontconfig
WANTLIB += freetype gd gdk-x11-2.0 gdk_pixbuf-2.0 gdkglext-x11-1.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 gtkglext-x11-1.0
WANTLIB += harfbuzz iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pcb/}

RUN_DEPENDS=	devel/m4 \
		devel/desktop-file-utils \
		graphics/ImageMagick \
		misc/shared-mime-info \
		x11/gtk+3,-guic \
		${MODTK_RUN_DEPENDS}

BUILD_DEPENDS=	${MODTK_BUILD_DEPENDS} \
		${TEST_DEPENDS} \
		devel/m4 \
		graphics/ImageMagick \
		shells/bash

LIB_DEPENDS=	graphics/gd \
		x11/dbus \
		x11/gtkglext

TEST_DEPENDS=	cad/gerbv \
		graphics/ImageMagick

MODULES=	textproc/intltool \
		x11/tk

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-doc \
		--with-gui=gtk \
		--disable-update-desktop-database \
		--disable-update-mime-database
CONFIGURE_ENV+= CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/doc/pcb.1 \
		${WRKSRC}/icon-theme-installer

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/pcb.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/doc/pcb.info* ${PREFIX}/info
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pcb
	${INSTALL_DATA} ${WRKSRC}/doc/pcb.html ${PREFIX}/share/doc/pcb
	${INSTALL_DATA} ${WRKSRC}/doc/*.png ${PREFIX}/share/doc/pcb
	${INSTALL_DATA} ${WRKSRC}/doc/refcard.pdf ${PREFIX}/share/doc/pcb

.include <bsd.port.mk>
