COMMENT =	rsync GUI
DISTNAME =	grsync-1.3.1
CATEGORIES =	x11 net

HOMEPAGE =	https://www.opbyte.it/grsync/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 harfbuzz intl m
WANTLIB += pango-1.0 pangocairo-1.0

SITES =		https://www.opbyte.it/release/
SITES.p =	https://gitlab.archlinux.org/archlinux/packaging/packages/grsync/-/raw/main/
PATCHFILES.p +=	use-themed-icon.patch
PATCH_DIST_STRIP =	-p1

MODULES =	textproc/intltool

# gnu -> autoreconf needed by PATCHFILES
CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

# for libintl.h detection
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS =	x11/gtk+3
RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		net/rsync \
		x11/gtk+4,-guic

.include <bsd.port.mk>
