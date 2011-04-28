# $OpenBSD: Makefile,v 1.5 2011/04/28 13:10:57 ajacoutot Exp $

COMMENT=	command line utility to run programs as root

DISTNAME=	gksu-polkit-0.0.2
REVISION=	1

SHARED_LIBS +=  gksu-polkit               0.0 # 0.1

CATEGORIES=	security sysutils x11

HOMEPAGE=	http://live.gnome.org/gksu

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo dbus-1 dbus-glib-1 drm execinfo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gee gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png polkit-gobject-1
WANTLIB += pthread pthread-stubs startup-notification-1 xcb xcb-atom
WANTLIB += xcb-aux xcb-event xcb-render xcb-shm z

MASTER_SITES=	http://people.debian.org/~kov/gksu/

LIB_DEPENDS=	sysutils/polkit \
		x11/gtk+2 \
		devel/libgee \
		devel/startup-notification \
		x11/dbus-glib

BUILD_DEPENDS=	lang/vala
RUN_DEPENDS=	polkit-gnome-*|polkit-qt4-*:x11/polkit-gnome

MODULES=	devel/gettext \
		textproc/intltool

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gtk-doc

FAKE_FLAGS=	DBUS_SYS_DIR=${PREFIX}/share/examples/gksu-polkit/dbus-1/system.d

post-extract:
	cp ${FILESDIR}/gksu-environment.vala ${WRKSRC}/common

pre-configure:
	${SUBST_CMD} ${WRKSRC}/mechanism/gksu-controller.c

.include <bsd.port.mk>
