# $OpenBSD: Makefile,v 1.31 2013/03/11 11:46:14 espie Exp $

COMMENT=	configuration utility for openbox

# git clone of b7f1c6ac679bbda61bc4ca13267f03022cbfde74
# which will become 2.0.4 when upstream releases a new version.
DISTNAME=	obconf-2.0.3.1
REVISION=	0
CATEGORIES=	x11

HOMEPAGE=	http://openbox.org/wiki/Obconf

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://distfiles.nl/
#http://icculus.org/openbox/obconf/

WANTLIB += GL ICE Imlib2 SM X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xft Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glade-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m obrender obt pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangoxft-1.0 pixman-1 png pthread pthread-stubs
WANTLIB += startup-notification-1 xcb xcb-render xcb-shm xml2
WANTLIB += z

MODULES=	devel/gettext
LIB_DEPENDS=	x11/gtk+2 \
		devel/libglade2 \
		devel/startup-notification \
		x11/openbox>=3.5.0
RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info>=0.21

USE_GMAKE=	Yes

AUTOMAKE_VERSION=1.9
AUTOCONF_VERSION=2.68
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

BUILD_DEPENDS += ${MODGNU_AUTOCONF_DEPENDS} ${MODGNU_AUTOMAKE_DEPENDS}

pre-configure:
	cd ${WRKSRC} && ${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} /bin/sh bootstrap

.include <bsd.port.mk>
