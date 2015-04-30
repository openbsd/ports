# $OpenBSD: Makefile,v 1.73 2015/04/30 22:09:55 ajacoutot Exp $

COMMENT=		HTML editor for experienced web designers

DISTNAME=		bluefish-2.2.6
CATEGORIES=		www editors
HOMEPAGE=		http://bluefish.openoffice.nl/

MASTER_SITES=		http://www.bennewitz.com/bluefish/stable/source/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 enchant epoxy expat ffi
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += gucharmap_2_90 harfbuzz lzma m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += python2.7 stdc++ util xcb xcb-render xcb-shm xml2 z

MODULES=		devel/gettext \
			lang/python \
			textproc/intltool

RUN_DEPENDS=		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+3,-guic

LIB_DEPENDS=		textproc/enchant \
			x11/gnome/gucharmap

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--with-freedesktop_org-menu='${PREFIX}/share/applications/' \
			--disable-update-databases

USE_GMAKE=		Yes

post-install:
	rm ${PREFIX}/lib/bluefish/*.{a,la}

.include <bsd.port.mk>
