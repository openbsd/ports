# $OpenBSD: Makefile,v 1.89 2019/07/12 20:50:18 sthen Exp $

COMMENT=		HTML editor for experienced web designers

DISTNAME =		bluefish-2.2.10
CATEGORIES=		www editors
HOMEPAGE=		http://bluefish.openoffice.nl/
REVISION =		6

MASTER_SITES=		http://www.bennewitz.com/bluefish/stable/source/

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 enchant epoxy expat ffi
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += gucharmap_2_90 harfbuzz iconv intl lzma m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += ${MODPY_WANTLIB} ${COMPILER_LIBCXX} util xcb xcb-render
WANTLIB += xcb-shm xml2 z fribidi

COMPILER =		base-clang ports-gcc base-gcc

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

.include <bsd.port.mk>
