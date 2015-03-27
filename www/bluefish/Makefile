# $OpenBSD: Makefile,v 1.71 2015/03/27 08:15:03 ajacoutot Exp $

COMMENT=	HTML editor for experienced web designers

DISTNAME =	bluefish-2.2.5
CATEGORIES=	www editors
HOMEPAGE=	http://bluefish.openoffice.nl/
REVISION =	1

MASTER_SITES=	http://www.bennewitz.com/bluefish/stable/source/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject dbus-1
WANTLIB += enchant expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 gucharmap_2_90 harfbuzz lzma m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs ${MODPY_WANTLIB} stdc++ util xcb
WANTLIB += xcb-render xcb-shm xml2 z

MODULES=	devel/gettext \
		lang/python \
		textproc/intltool

RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

LIB_DEPENDS=	textproc/enchant \
		x11/gnome/gucharmap

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-freedesktop_org-menu='${PREFIX}/share/applications/' \
		--disable-update-databases
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE=	Yes

post-install:
	rm ${PREFIX}/lib/bluefish/*.{a,la}

.include <bsd.port.mk>
