# $OpenBSD: Makefile,v 1.33 2015/04/21 18:13:09 sthen Exp $

COMMENT=	configuration utility for openbox

# git clone of b7f1c6ac679bbda61bc4ca13267f03022cbfde74
# which will become 2.0.4 when upstream releases a new version.
DISTNAME=	obconf-2.0.4
CATEGORIES=	x11
REVISION=	0

HOMEPAGE=	http://openbox.org/wiki/Obconf

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE Imlib2 SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xft
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0
WANTLIB += glib-2.0 gobject-2.0 gtk-x11-2.0 m obrender obt pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pangoxft-1.0 pthread rsvg-2
WANTLIB += startup-notification-1 xml2 z

MASTER_SITES=	http://openbox.org/dist/obconf/
#http://icculus.org/openbox/obconf/


MODULES=	devel/gettext
LIB_DEPENDS=	x11/gtk+2 \
		devel/libglade2 \
		devel/startup-notification \
		x11/openbox>=3.5.2
RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info>=0.21

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
