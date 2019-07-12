# $OpenBSD: Makefile,v 1.39 2019/07/12 20:51:17 sthen Exp $

COMMENT=	configuration utility for openbox

DISTNAME=	obconf-2.0.4
CATEGORIES=	x11
REVISION=	4

HOMEPAGE=	http://openbox.org/wiki/Obconf

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ICE Imlib2 SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xft Xi Xinerama Xrandr Xrender atk-1.0 c cairo fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0
WANTLIB += glib-2.0 gobject-2.0 gtk-x11-2.0 intl m obrender obt
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pangoxft-1.0
WANTLIB += rsvg-2 startup-notification-1 xml2 z

MASTER_SITES=	http://openbox.org/dist/obconf/

LIB_DEPENDS=	devel/gettext,-runtime \
		x11/gtk+2 \
		devel/libglade2 \
		devel/startup-notification \
		x11/openbox>=3.5.2
RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info>=0.21

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
