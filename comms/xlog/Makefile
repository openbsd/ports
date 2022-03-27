COMMENT=		logbook program for amateur radio operators

DISTNAME=		xlog-2.0.15
CATEGORIES=    		comms hamradio
REVISION=		3

HOMEPAGE=		http://www.nongnu.org/xlog/

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += hamlib harfbuzz intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += z

MASTER_SITES=		http://download.savannah.nongnu.org/releases/xlog/ \
			https://distfiles.sigtrap.nl/

RUN_DEPENDS=		devel/desktop-file-utils \
			misc/shared-mime-info
LIB_DEPENDS=		comms/hamlib \
			x11/gtk+2

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		UPDATE_DESKTOP_DATABASE=/usr/bin/true

pre-configure:
# Needed for strptime(3); prevents a buttload of patches
	perl -pi -e 's,^(#define _XOPEN_SOURCE)$$,\1\n#define _XOPEN_SOURCE_EXTENDED 1,g' \
		${WRKSRC}/src/logfile/*.c ${WRKSRC}/src/callbacks_mainwindow_menu.c

.include <bsd.port.mk>
