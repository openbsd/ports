# $OpenBSD: Makefile,v 1.27 2011/10/30 15:32:11 jasper Exp $

COMMENT=	configuration utility for openbox

DISTNAME=	obconf-2.0.3
REVISION=	10
CATEGORIES=	x11

HOMEPAGE=	http://icculus.org/openbox/index.php/Obconf

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://icculus.org/openbox/obconf/

WANTLIB += GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xft Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glade-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m obparser obrender pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangoxft-1.0 pixman-1 png pthread pthread-stubs
WANTLIB += startup-notification-1 xcb xcb-render xcb-shm xml2
WANTLIB += z

MODULES=	devel/gettext
LIB_DEPENDS=	x11/gtk+2 \
		devel/libglade2 \
		devel/startup-notification \
		x11/openbox
RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info>=0.21

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
