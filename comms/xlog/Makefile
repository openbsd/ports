# $OpenBSD: Makefile,v 1.22 2015/07/15 17:23:31 jasper Exp $

COMMENT=		logbook program for amateur radio operators

DISTNAME=		xlog-2.0.13
CATEGORIES=    		comms hamradio

HOMEPAGE=		http://www.nongnu.org/xlog/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://download.savannah.nongnu.org/releases/xlog/

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 hamlib m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pthread z

RUN_DEPENDS=		devel/desktop-file-utils \
			misc/shared-mime-info
LIB_DEPENDS=		comms/hamlib \
			x11/gtk+2

MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		UPDATE_DESKTOP_DATABASE=/usr/bin/true

pre-configure:
	perl -pi -e 's,.-Wno-unused-but-set-variable,,' \
		${WRKSRC}/configure
# Needed for strptime(3); prevents a buttload of patches
	perl -pi -e 's,^(#define _XOPEN_SOURCE)$$,\1\n#define _XOPEN_SOURCE_EXTENDED 1,g' \
		${WRKSRC}/src/logfile/*.c ${WRKSRC}/src/callbacks_mainwindow_menu.c

.include <bsd.port.mk>
