# $OpenBSD: Makefile,v 1.90 2020/03/04 17:58:24 bket Exp $

COMMENT=		HTML editor for experienced web designers

DISTNAME=		bluefish-2.2.11

CATEGORIES=		www editors

HOMEPAGE=		http://bluefish.openoffice.nl/

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB} X11 Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += atk-bridge-2.0 c cairo cairo-gobject enchant epoxy expat ffi
WANTLIB += fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += gucharmap_2_90 harfbuzz iconv intl lzma m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png util xcb
WANTLIB += xcb-render xcb-shm xml2 z

MASTER_SITES=		https://www.bennewitz.com/bluefish/stable/source/

COMPILER=		base-clang ports-gcc base-gcc

MODULES=		lang/python \
			textproc/intltool

RUN_DEPENDS=		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+3,-guic
LIB_DEPENDS=		textproc/enchant \
			x11/gnome/gucharmap

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--with-freedesktop_org-menu='${PREFIX}/share/applications/' \
			--disable-update-databases

USE_GMAKE=		Yes

post-install:
	rm ${PREFIX}/lib/bluefish/*.{a,la}
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}/share/bluefish

.include <bsd.port.mk>
