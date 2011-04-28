# $OpenBSD: Makefile,v 1.6 2011/04/28 13:09:59 ajacoutot Exp $

COMMENT=	PolicyKit integration for GNOME/GTK+2

DISTNAME=	polkit-gnome-0.101

CATEGORIES=	x11 sysutils

EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS +=  polkit-gtk-1              1.0 # 0.0

HOMEPAGE=	http://hal.freedesktop.org/docs/PolicyKit-gnome/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += drm expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png polkit-agent-1 polkit-gobject-1 pthread
WANTLIB += pthread-stubs xcb xcb-render xcb-shm z

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
		--disable-gtk-doc \
		--disable-silent-rules \
		--with-gtk=2.0

# revert the following commit:
# From 47ca445decf21b8de13d804b870d6ce171bad306 Mon Sep 17 00:00:00 2001
# From: David Zeuthen <davidz@redhat.com>
# Date: Mon, 21 Feb 2011 21:44:43 +0000
# Subject: Nuke desktop file for autostart
# It is much easier if the desktops (and power users) using this
# authentication agent just loads it themselves (via e.g. XDG autostart
# or whatever).
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/polkit-gnome/xdg/autostart
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} \
		-c ${FILESDIR}/polkit-gnome-authentication-agent-1.desktop \
		${PREFIX}/share/examples/polkit-gnome/xdg/autostart/polkit-gnome-authentication-agent-1.desktop

.include <bsd.port.mk>
