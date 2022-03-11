COMMENT =	rsync GUI
DISTNAME =	grsync-1.3.0
CATEGORIES =	x11 net

HOMEPAGE =	https://www.opbyte.it/grsync/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 harfbuzz intl m
WANTLIB += pango-1.0 pangocairo-1.0

MASTER_SITES =	https://www.opbyte.it/release/
MASTER_SITES1 =	https://raw.githubusercontent.com/archlinux/svntogit-community/2f11d98b7b78141764276e8e73272e0ea48b0ada/grsync/trunk/
PATCHFILES +=	grsync-1.3.0-{}use-themed-icon.patch:1
PATCH_DIST_STRIP =	-p1

MODULES =	textproc/intltool

CONFIGURE_STYLE =	gnu
# for libintl.h detection
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS =	x11/gtk+3
RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		net/rsync \
		x11/gtk+3,-guic

.include <bsd.port.mk>
