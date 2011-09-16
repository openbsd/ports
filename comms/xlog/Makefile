# $OpenBSD: Makefile,v 1.19 2011/09/16 08:48:02 espie Exp $

COMMENT=		logbook program for amateur radio operators

DISTNAME=		xlog-2.0.5
CATEGORIES=    		comms hamradio
REVISION =		0

HOMEPAGE=		http://www.nongnu.org/xlog/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://download.savannah.nongnu.org/releases/xlog/

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 hamlib m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

RUN_DEPENDS=		devel/desktop-file-utils \
			misc/shared-mime-info
LIB_DEPENDS=		comms/hamlib \
			x11/gtk+2

MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		UPDATE_DESKTOP_DATABASE=/usr/bin/true

.include <bsd.port.mk>
