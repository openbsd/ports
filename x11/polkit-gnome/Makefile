# $OpenBSD: Makefile,v 1.5 2011/04/07 13:40:04 ajacoutot Exp $

COMMENT=	PolicyKit integration for GNOME/GTK+2

DISTNAME=	polkit-gnome-0.96
REVISION=	2

CATEGORIES=	x11 sysutils

EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS +=  polkit-gtk-1              0.0 # 0.0

HOMEPAGE=	http://hal.freedesktop.org/docs/PolicyKit-gnome/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 dbus-glib-1
WANTLIB += eggdbus-1 expat fontconfig freetype gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 m pango-1.0 drm xcb-shm
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs xcb xcb-render z polkit-agent-1 GL Xxf86vm
WANTLIB += polkit-gobject-1 gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0

MASTER_SITES=	http://hal.freedesktop.org/releases/

MODULES=	devel/gettext \
		textproc/intltool

BUILD_DEPENDS=	devel/gobject-introspection

LIB_DEPENDS=	sysutils/polkit>=0.97p6 \
		x11/gtk+2

# XXX: the libtool wrapper script is passed as argument to g-ir-scanner,
# instead of the actual library
USE_LIBTOOL=	gnu

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--localstatedir=/var \
		--enable-introspection \
		--disable-gtk-doc

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/polkit-gnome

.include <bsd.port.mk>
